.class public final Lcom/miui/home/recents/messages/WorldCirculateChangedEvent;
.super Ljava/lang/Object;
.source "WorldCirculateChangedEvent.kt"


# instance fields
.field private final isSupportWorldCirculate:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/recents/messages/WorldCirculateChangedEvent;->isSupportWorldCirculate:Z

    return-void
.end method


# virtual methods
.method public final isSupportWorldCirculate()Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/miui/home/recents/messages/WorldCirculateChangedEvent;->isSupportWorldCirculate:Z

    return p0
.end method
