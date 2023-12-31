.class public Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;
.super Ljava/lang/Object;
.source "UserQuietModeChangeMessage.java"


# instance fields
.field private mQuietModeEnabled:Z

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;->mUser:Landroid/os/UserHandle;

    .line 11
    iput-boolean p2, p0, Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;->mQuietModeEnabled:Z

    return-void
.end method
