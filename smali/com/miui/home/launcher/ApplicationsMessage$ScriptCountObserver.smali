.class public abstract Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;
.super Landroid/database/ContentObserver;
.source "ApplicationsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ApplicationsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ScriptCountObserver"
.end annotation


# instance fields
.field private mTargetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 65
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 66
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;->mTargetPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTargetPackage()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;->mTargetPackage:Ljava/lang/String;

    return-object v0
.end method
