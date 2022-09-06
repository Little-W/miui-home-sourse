.class Lmiui/home/lib/dialog/AlertController$2;
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

    .line 209
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 213
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 214
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 215
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v0, v0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v0, v0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 218
    :cond_0
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    goto/16 :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 220
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_6

    .line 221
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    goto :goto_0

    .line 223
    :cond_2
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    .line 224
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_6

    .line 225
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    goto :goto_0

    .line 228
    :cond_3
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController;->access$200(Lmiui/home/lib/dialog/AlertController;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController;->access$200(Lmiui/home/lib/dialog/AlertController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 229
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController;->access$200(Lmiui/home/lib/dialog/AlertController;)Ljava/util/List;

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

    .line 230
    invoke-static {v3}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v4

    if-ne p1, v4, :cond_4

    .line 231
    invoke-static {v3}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Landroid/os/Message;

    move-result-object v1

    move-object v2, v1

    .line 236
    :cond_5
    instance-of v1, p1, Lmiui/home/lib/dialog/widget/GroupButton;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lmiui/home/lib/dialog/widget/GroupButton;

    invoke-virtual {v1}, Lmiui/home/lib/dialog/widget/GroupButton;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 237
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 240
    :cond_6
    :goto_0
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    if-eqz v2, :cond_7

    .line 242
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 246
    :cond_7
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$2;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget-object p1, p1, Lmiui/home/lib/dialog/AlertController;->mHandler:Landroid/os/Handler;

    const v0, -0x626d435d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
