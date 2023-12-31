.class Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;
.super Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->widgetDoBoomAnim(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Runnable;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Lcom/miui/home/launcher/sound/SoundPoolHelper;Ljava/lang/Runnable;)V
    .locals 0

    .line 73
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    iput-object p3, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$animEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performBoom()V

    .line 78
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->playAsync(IF)V

    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 90
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$animEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 84
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$animEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
