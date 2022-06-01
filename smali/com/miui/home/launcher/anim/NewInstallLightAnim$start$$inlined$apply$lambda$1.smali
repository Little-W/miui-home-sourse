.class public final Lcom/miui/home/launcher/anim/NewInstallLightAnim$start$$inlined$apply$lambda$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NewInstallLightAnim.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/NewInstallLightAnim;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $pathInterpolator$inlined:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/miui/home/launcher/anim/NewInstallLightAnim;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/anim/NewInstallLightAnim;Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim$start$$inlined$apply$lambda$1;->this$0:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    iput-object p2, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim$start$$inlined$apply$lambda$1;->$pathInterpolator$inlined:Landroid/view/animation/Interpolator;

    .line 67
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim$start$$inlined$apply$lambda$1;->this$0:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->access$release(Lcom/miui/home/launcher/anim/NewInstallLightAnim;)V

    .line 70
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim$start$$inlined$apply$lambda$1;->this$0:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->access$getMAnimFinishCallback$p(Lcom/miui/home/launcher/anim/NewInstallLightAnim;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
