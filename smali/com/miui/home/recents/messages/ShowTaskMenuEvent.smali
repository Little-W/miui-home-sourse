.class public Lcom/miui/home/recents/messages/ShowTaskMenuEvent;
.super Ljava/lang/Object;
.source "ShowTaskMenuEvent.java"


# instance fields
.field public final taskView:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;->taskView:Lcom/miui/home/recents/views/TaskView;

    return-void
.end method
