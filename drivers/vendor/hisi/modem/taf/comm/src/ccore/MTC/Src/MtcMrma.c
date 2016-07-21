

/*****************************************************************************
  1 头文件包含
*****************************************************************************/
#include "MtcRcmInterface.h"
#include "ImsaMtcInterface.h"
#include "MtcCtx.h"
#include "MtcDebug.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

#define    THIS_FILE_ID        PS_FILE_ID_MTC_MRMA_C

/*****************************************************************************
  2 全局变量定义
*****************************************************************************/

/*****************************************************************************
  3 函数定义
*****************************************************************************/

VOS_VOID MTC_SndRcmModemStateInd(VOS_VOID)
{
    MTC_RCM_MODEM_STATE_NOTIFY_STRU    *pstModemState;
    MODEM_ID_ENUM_UINT16                enModemId;

    /* 申请消息包 */
    pstModemState = (MTC_RCM_MODEM_STATE_NOTIFY_STRU *)MTC_ALLOC_MSG_WITH_HDR(sizeof(MTC_RCM_MODEM_STATE_NOTIFY_STRU));
    if (VOS_NULL_PTR == pstModemState)
    {
        MTC_ERROR_LOG("MTC_SndRcmModemStateInd: Alloc Msg Fail!");
        return;
    }

    PS_MEM_SET(((VOS_UINT8*)pstModemState) + VOS_MSG_HEAD_LENGTH, 0, sizeof(MTC_RCM_MODEM_STATE_NOTIFY_STRU) - VOS_MSG_HEAD_LENGTH);

    /* 填充消息头 */
    MTC_CFG_RCM_MSG_HDR(&pstModemState->stMsgHeader, ID_MTC_RCM_MODEM_STATUS_NOTIFY);

    /* 填写modem0和modem1的状态信息 */
    for (enModemId = 0; enModemId < MODEM_ID_BUTT ; enModemId++)
    {
        pstModemState->astModemState[enModemId].enCsSrvConnState        = MTC_GetCsConnStateInfo(enModemId);
        pstModemState->astModemState[enModemId].enPsSrvConnState        = MTC_GetRcmPsConnStateInfo(enModemId);
        pstModemState->astModemState[enModemId].enModemPowerState       = MTC_GetModemPowerState(enModemId);
        pstModemState->astModemState[enModemId].enUsimmCardState        = MTC_GetUsimmStateInfo(enModemId);
        pstModemState->astModemState[enModemId].enModemType             = MTC_RCM_MODEM_0 + enModemId;
    }

    /* 填写CDMA状态信息 */
    pstModemState->astModemState[MTC_RCM_MODEM_CDMA].enCsSrvConnState   = MTC_GetOutSideCsConnStateInfo(MTC_OUTSIDE_MODEM_CDMA);
    pstModemState->astModemState[MTC_RCM_MODEM_CDMA].enPsSrvConnState   = MTC_GetOutSidePsConnStateInfo(MTC_OUTSIDE_MODEM_CDMA);
    pstModemState->astModemState[MTC_RCM_MODEM_CDMA].enModemPowerState  = MTC_GetOutSideModemPowerState(MTC_OUTSIDE_MODEM_CDMA);
    pstModemState->astModemState[MTC_RCM_MODEM_CDMA].enUsimmCardState   = MTC_GetOutSideModemUsimmState(MTC_OUTSIDE_MODEM_CDMA);
    pstModemState->astModemState[MTC_RCM_MODEM_CDMA].enModemType        = MTC_RCM_MODEM_CDMA;

    /* 发送消息 */
    MTC_SEND_MSG(pstModemState);

    return;
}
VOS_VOID MTC_SndImsaModem1InfoInd(VOS_VOID)
{
    MTC_IMSA_MODEM1_INFO_IND_STRU      *pstModem1Info = VOS_NULL_PTR;

    /* IMSA没有Start则不需要发消息 */
    if (MTC_MODEM_POWER_ON != MTC_GetModemImsaState(MODEM_ID_0))
    {
        return;
    }

    /* 申请消息包 */
    pstModem1Info = (MTC_IMSA_MODEM1_INFO_IND_STRU *)MTC_ALLOC_MSG_WITH_HDR(sizeof(MTC_IMSA_MODEM1_INFO_IND_STRU));
    if (VOS_NULL_PTR == pstModem1Info)
    {
        MTC_ERROR_LOG("MTC_SndImsaModem1InfoInd: Alloc Msg Fail!");
        return;
    }

    /* 清空消息内容 */
    PS_MEM_SET(MTC_GET_MSG_ENTITY(pstModem1Info), 0x00, MTC_GET_MSG_LENGTH(pstModem1Info));

    /* 填充消息头 */
    MTC_CFG_IMSA_MSG_HDR(pstModem1Info, ID_MTC_IMSA_MODEM1_INFO_IND);

    /* 填写Modem1的信息 */
    pstModem1Info->enPowerState = MTC_GetModemPowerState(MODEM_ID_1);

    /* 发送消息 */
    MTC_SEND_MSG(pstModem1Info);

    return;
}


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

