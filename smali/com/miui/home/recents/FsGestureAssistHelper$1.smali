.class Lcom/miui/home/recents/FsGestureAssistHelper$1;
.super Ljava/lang/Object;
.source "FsGestureAssistHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/FsGestureAssistHelper;->initResetAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/FsGestureAssistHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/FsGestureAssistHelper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper$1;->this$0:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 61
    sget-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onAssistantProgress(F)V

    :cond_0
    return-void
.end method
