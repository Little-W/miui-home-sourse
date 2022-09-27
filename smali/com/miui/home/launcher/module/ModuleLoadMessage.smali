.class public Lcom/miui/home/launcher/module/ModuleLoadMessage;
.super Ljava/lang/Object;
.source "ModuleLoadMessage.java"


# instance fields
.field private final mModule:Ljava/lang/String;

.field private final mSuccess:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/miui/home/launcher/module/ModuleLoadMessage;->mModule:Ljava/lang/String;

    .line 9
    iput-boolean p2, p0, Lcom/miui/home/launcher/module/ModuleLoadMessage;->mSuccess:Z

    return-void
.end method


# virtual methods
.method public getModule()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/miui/home/launcher/module/ModuleLoadMessage;->mModule:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/miui/home/launcher/module/ModuleLoadMessage;->mSuccess:Z

    return v0
.end method
