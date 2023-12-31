.class Lmiuix/appcompat/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 191
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 192
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 193
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v0, v0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 194
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    move v2, v1

    move-object v1, v0

    move v0, v2

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 202
    :goto_0
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 208
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object p1, p1, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
