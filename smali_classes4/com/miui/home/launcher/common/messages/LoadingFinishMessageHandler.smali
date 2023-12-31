.class public Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;
.super Ljava/lang/Object;
.source "LoadingFinishMessageHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLoadingFinished()V
    .locals 0

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LoadingFinishMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;->onLoadingFinished()V

    return-void
.end method
