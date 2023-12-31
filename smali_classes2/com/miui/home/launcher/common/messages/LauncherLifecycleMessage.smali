.class public Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;
.super Ljava/lang/Object;
.source "LauncherLifecycleMessage.java"


# instance fields
.field private final mLifecycle:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;->mLifecycle:I

    return-void
.end method


# virtual methods
.method public getLifecycle()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;->mLifecycle:I

    return p0
.end method
