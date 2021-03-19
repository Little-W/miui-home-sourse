.class public Lcom/miui/maml/data/BroadcastBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/BroadcastBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "BroadcastBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "BroadcastBinder"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 48
    new-instance p2, Lcom/miui/maml/data/BroadcastBinder$1;

    invoke-direct {p2, p0}, Lcom/miui/maml/data/BroadcastBinder$1;-><init>(Lcom/miui/maml/data/BroadcastBinder;)V

    iput-object p2, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    invoke-direct {p0, p1}, Lcom/miui/maml/data/BroadcastBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "action"

    .line 100
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/miui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    .line 107
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/BroadcastBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void

    :cond_0
    const-string p1, "BroadcastBinder"

    const-string v0, "no action in broadcast binder"

    .line 102
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no action in broadcast binder element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "BroadcastBinder"

    const-string v0, "ContentProviderBinder node is null"

    .line 97
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "node is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateVariables(Landroid/content/Intent;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "BroadcastBinder"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVariables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 128
    check-cast v1, Lcom/miui/maml/data/BroadcastBinder$Variable;

    const-wide/16 v2, 0x0

    .line 132
    iget v4, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mType:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    .line 138
    iget v4, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mType:I

    packed-switch v4, :pswitch_data_0

    const-string v4, "BroadcastBinder"

    .line 152
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalide type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    :pswitch_0
    iget-object v2, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v3, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    goto :goto_1

    .line 143
    :pswitch_1
    iget-object v2, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v3, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    goto :goto_1

    .line 149
    :pswitch_2
    iget-object v2, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v3, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-long v3, v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-double v2, v2

    goto :goto_1

    .line 146
    :pswitch_3
    iget-object v2, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v3, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    .line 155
    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/BroadcastBinder$Variable;->set(D)V

    const-string v4, "%f"

    .line 157
    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 134
    :cond_1
    iget-object v2, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 135
    iget-object v3, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mDefStringValue:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Lcom/miui/maml/data/BroadcastBinder$Variable;->set(Ljava/lang/Object;)V

    :goto_3
    const-string v3, "name:%s type:%s value:%s"

    const/4 v4, 0x3

    .line 162
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mName:Ljava/lang/String;

    aput-object v8, v4, v5

    iget-object v1, v1, Lcom/miui/maml/data/BroadcastBinder$Variable;->mTypeStr:Ljava/lang/String;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastBinder"

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVariables: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected addVariable(Lcom/miui/maml/data/BroadcastBinder$Variable;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .locals 0

    .line 174
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->finish()V

    .line 175
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->unregister()V

    return-void
.end method

.method public init()V
    .locals 0

    .line 169
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->init()V

    .line 170
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->register()V

    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/BroadcastBinder$Variable;
    .locals 2

    .line 112
    new-instance v0, Lcom/miui/maml/data/BroadcastBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/data/BroadcastBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/BroadcastBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/BroadcastBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .line 64
    invoke-direct {p0, p2}, Lcom/miui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->onUpdateComplete()V

    return-void
.end method

.method protected onRegister()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    invoke-direct {p0, v0}, Lcom/miui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->onUpdateComplete()V

    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected register()V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->onRegister()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    return-void
.end method

.method protected unregister()V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    return-void
.end method
