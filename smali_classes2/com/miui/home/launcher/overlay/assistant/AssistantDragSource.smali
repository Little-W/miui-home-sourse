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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mSource:Ljava/lang/String;

    const-string v0, "picker"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mShouldTransform:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;-><init>(Ljava/lang/String;)V

    .line 27
    iget-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mShouldTransform:Z

    and-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mShouldTransform:Z

    return-void
.end method


# virtual methods
.method public getContainerId()J
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mSource:Ljava/lang/String;

    const-string v1, "assistant"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x6e

    return-wide v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mSource:Ljava/lang/String;

    const-string v1, "assistant_live"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x6f

    return-wide v0

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mSource:Ljava/lang/String;

    const-string v0, "picker"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v0, -0x70

    return-wide v0

    :cond_2
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
    .locals 1

    .line 63
    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->mShouldTransform:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    aput p3, p2, p0

    const/4 p0, 0x1

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    aput p4, p2, p0

    :cond_0
    return-void
.end method
