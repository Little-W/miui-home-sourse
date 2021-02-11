.class final Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

.field final synthetic val$springLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$springLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$springLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->startWaveAnimation(Landroid/view/View;I)V

    .line 59
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performBoom(Landroid/view/View;)V

    return-void
.end method
