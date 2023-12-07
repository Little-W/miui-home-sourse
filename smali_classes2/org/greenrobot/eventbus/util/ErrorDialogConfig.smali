.class public Lorg/greenrobot/eventbus/util/ErrorDialogConfig;
.super Ljava/lang/Object;


# instance fields
.field eventBus:Lorg/greenrobot/eventbus/EventBus;


# virtual methods
.method getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    :goto_0
    return-object p0
.end method
