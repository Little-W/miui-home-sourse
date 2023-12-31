.class public Lcom/miui/home/launcher/common/messages/DragMessage;
.super Ljava/lang/Object;
.source "DragMessage.java"


# instance fields
.field private mIsDragging:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/messages/DragMessage;->mIsDragging:Z

    return-void
.end method


# virtual methods
.method public isDragging()Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/miui/home/launcher/common/messages/DragMessage;->mIsDragging:Z

    return p0
.end method
