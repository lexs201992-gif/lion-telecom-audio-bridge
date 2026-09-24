package com.android.systemui.media.taptotransfer.sender;
import com.android.systemui.media.taptotransfer.sender.TransferStatus;
import com.android.internal.logging.UiEventLogger$UiEventEnum;
import com.android.systemui.media.taptotransfer.sender.MediaTttSenderUiEvents;
import android.content.Context;
import com.android.systemui.media.taptotransfer.sender.ChipStateSender$Companion;
import com.android.systemui.media.taptotransfer.sender.TimeoutLength;
import com.android.systemui.media.taptotransfer.sender.SenderEndItem;
import java.lang.Integer;
import java.lang.String;
import com.android.systemui.common.shared.model.Text;

public abstract class ChipStateSender extends Enum
{
/*
 * Field Definitions.
 */
      public static final ChipStateSender[] $VALUES;
      public static final ChipStateSender$Companion Companion;
      public static final ChipStateSender FAR_FROM_RECEIVER;
      public static final ChipStateSender TRANSFER_TO_RECEIVER_FAILED;
      public static final ChipStateSender TRANSFER_TO_RECEIVER_SUCCEEDED;
      public static final ChipStateSender TRANSFER_TO_RECEIVER_TRIGGERED;
      public static final ChipStateSender TRANSFER_TO_THIS_DEVICE_FAILED;
      public static final ChipStateSender TRANSFER_TO_THIS_DEVICE_SUCCEEDED;
      public static final ChipStateSender TRANSFER_TO_THIS_DEVICE_TRIGGERED;
      private final SenderEndItem endItem;
      private final int stateInt;
      private final Integer stringResId;
      private final TimeoutLength timeoutLength;
      private final TransferStatus transferStatus;
      private final UiEventLogger$UiEventEnum uiEvent;
/*
 * Declared Constructors.
 */
    public ChipStateSender(String, int, int, MediaTttSenderUiEvents, Integer, TransferStatus, SenderEndItem) { ... }
    public ChipStateSender(String, int, int, MediaTttSenderUiEvents, Integer, TransferStatus, SenderEndItem, TimeoutLength) { ... }
    public Text getChipTextString(Context, String) { ... }
    public final SenderEndItem getEndItem() { ... }
    public final int getStateInt() { ... }
    public final TimeoutLength getTimeoutLength() { ... }
    public final TransferStatus getTransferStatus() { ... }
    public final UiEventLogger$UiEventEnum getUiEvent() { ... }
    public abstract boolean isValidNextState(ChipStateSender) { ... }
    public static ChipStateSender valueOf(String) { ... }
    public static ChipStateSender[] values() { ... }

} 