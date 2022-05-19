.class public Lcom/miui/home/recents/messages/ChangeLauncherStateEvent;
.super Ljava/lang/Object;
.source "ChangeLauncherStateEvent.java"


# instance fields
.field public mIsToFeedState:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/miui/home/recents/messages/ChangeLauncherStateEvent;->mIsToFeedState:Z

    return-void
.end method
