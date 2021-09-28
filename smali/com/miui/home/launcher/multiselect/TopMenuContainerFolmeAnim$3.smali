.class Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$3;
.super Ljava/lang/Object;
.source "TopMenuContainerFolmeAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->onTouchEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

.field final synthetic val$motionEvent:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;Landroid/view/MotionEvent;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$3;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iput-object p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$3;->val$motionEvent:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$3;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-static {v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$300(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$3;->val$motionEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lmiuix/animation/ITouchStyle;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
