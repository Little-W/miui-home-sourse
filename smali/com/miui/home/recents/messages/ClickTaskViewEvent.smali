.class public Lcom/miui/home/recents/messages/ClickTaskViewEvent;
.super Ljava/lang/Object;
.source "ClickTaskViewEvent.java"


# instance fields
.field private mTaskId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/miui/home/recents/messages/ClickTaskViewEvent;->mTaskId:I

    return-void
.end method


# virtual methods
.method public getTaskId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/miui/home/recents/messages/ClickTaskViewEvent;->mTaskId:I

    return v0
.end method
