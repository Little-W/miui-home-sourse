.class public Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;
.super Ljava/lang/Object;
.source "AssistantDragSource.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;


# instance fields
.field private mShouldTransform:Z

.field protected mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "picker"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;-><init>(Z)V

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mSource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mShouldTransform:Z

    return-void
.end method


# virtual methods
.method public getContainerId()J
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mSource:Ljava/lang/String;

    const-string v1, "assistant"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x6e

    return-wide v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mSource:Ljava/lang/String;

    const-string v1, "assistant_live"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x6f

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public transform(Landroid/view/View;[III)V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mShouldTransform:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    aput p3, p2, v0

    const/4 p3, 0x1

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    aput p4, p2, p3

    :cond_0
    return-void
.end method
