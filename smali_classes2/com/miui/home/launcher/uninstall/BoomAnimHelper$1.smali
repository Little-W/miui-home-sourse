.class Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;
.super Lmiuix/animation/listener/TransitionListener;
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
.field final synthetic val$springLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;Landroid/view/View;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$springLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$springLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;->val$target:Landroid/view/View;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->startWaveAnimation(Landroid/view/View;I)V

    .line 81
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performBoom()V

    return-void
.end method
