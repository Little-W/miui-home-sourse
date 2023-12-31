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

    .line 59
    iput-object p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper$1;->this$0:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 62
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 63
    sget-object p1, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onAssistantProgress(F)V

    :cond_0
    return-void
.end method
