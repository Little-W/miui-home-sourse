.class Lcom/miui/home/launcher/UninstallDialog$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UninstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/UninstallDialog;->onShow(ZZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/UninstallDialog;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/UninstallDialog;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$4;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 469
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$4;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$000(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performUninstall(Landroid/view/View;)V

    .line 470
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$4;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialog;->access$1000(Lcom/miui/home/launcher/UninstallDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$4;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialog;->access$200(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSoundPoolHelper()Lcom/miui/home/launcher/sound/SoundPoolHelper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->playAsync(I)V

    :cond_0
    return-void
.end method
