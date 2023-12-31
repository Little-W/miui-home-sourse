.class Lmiui/home/lib/dialog/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/home/lib/dialog/AlertController;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 253
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 254
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 255
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v0, v0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v0, v0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 258
    :cond_0
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    goto/16 :goto_0

    .line 259
    :cond_1
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 260
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_6

    .line 261
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    goto :goto_0

    .line 263
    :cond_2
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    .line 264
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_6

    .line 265
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    goto :goto_0

    .line 268
    :cond_3
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController;->access$300(Lmiui/home/lib/dialog/AlertController;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController;->access$300(Lmiui/home/lib/dialog/AlertController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 269
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController;->access$300(Lmiui/home/lib/dialog/AlertController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/home/lib/dialog/AlertController$ButtonInfo;

    .line 270
    invoke-static {v3}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v4

    if-ne p1, v4, :cond_4

    .line 271
    invoke-static {v3}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$500(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Landroid/os/Message;

    move-result-object v1

    move-object v2, v1

    .line 276
    :cond_5
    instance-of v1, p1, Lmiui/home/lib/dialog/widget/GroupButton;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lmiui/home/lib/dialog/widget/GroupButton;

    invoke-virtual {v1}, Lmiui/home/lib/dialog/widget/GroupButton;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 277
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 280
    :cond_6
    :goto_0
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    invoke-static {p1, v1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    if-eqz v2, :cond_7

    .line 282
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 286
    :cond_7
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mHandler:Landroid/os/Handler;

    const p1, -0x626d435d

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
