.class Lmiuix/animation/controller/FolmeTouch$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolmeTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/FolmeTouch;-><init>([Lmiuix/animation/IAnimTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeTouch;


# direct methods
.method constructor <init>(Lmiuix/animation/controller/FolmeTouch;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch$1;->this$0:Lmiuix/animation/controller/FolmeTouch;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 2

    .line 91
    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch$1;->this$0:Lmiuix/animation/controller/FolmeTouch;

    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-static {p1, v0}, Lmiuix/animation/controller/FolmeTouch;->access$000(Lmiuix/animation/controller/FolmeTouch;Lmiuix/animation/ITouchStyle$TouchType;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    if-eq p1, v0, :cond_0

    iget-object p1, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    if-ne p1, v0, :cond_1

    .line 93
    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch$1;->this$0:Lmiuix/animation/controller/FolmeTouch;

    iget-object p1, p1, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p1

    const/4 v0, 0x6

    .line 94
    invoke-virtual {p1, v0}, Lmiuix/animation/IAnimTarget;->getValue(I)F

    move-result v0

    const/4 v1, 0x5

    .line 95
    invoke-virtual {p1, v1}, Lmiuix/animation/IAnimTarget;->getValue(I)F

    move-result p1

    .line 94
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 96
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$1;->this$0:Lmiuix/animation/controller/FolmeTouch;

    invoke-static {v0}, Lmiuix/animation/controller/FolmeTouch;->access$100(Lmiuix/animation/controller/FolmeTouch;)F

    move-result v0

    sub-float v0, p1, v0

    div-float/2addr v0, p1

    const p1, 0x3f666666    # 0.9f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 97
    iget-object p2, p2, Lmiuix/animation/listener/UpdateInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p2, v0}, Lmiuix/animation/styles/PropertyStyle;->setValues([F)V

    :cond_1
    return-void
.end method
