.class public Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;
.super Ljava/lang/Object;
.source "LauncherBottomMenuMessage.java"


# instance fields
.field private mIsShow:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;->mIsShow:Z

    return-void
.end method


# virtual methods
.method public isShow()Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;->mIsShow:Z

    return p0
.end method
