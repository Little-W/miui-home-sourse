.class public Lcom/market/sdk/ServiceProxy2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/ServiceProxy2$ProxyTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceProxy2"


# instance fields
.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/market/sdk/ServiceProxy2;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/market/sdk/ServiceProxy2;->intent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$300(Lcom/market/sdk/ServiceProxy2;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/ServiceProxy2;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/market/sdk/ServiceProxy2;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/ServiceProxy2;->intent:Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public setTask(Lcom/market/sdk/ServiceProxy2$ProxyTask;)Lcom/market/sdk/ServiceProxy2$ProxyTask;
    .locals 0

    invoke-static {p1}, Lcom/market/sdk/ServiceProxy2$ProxyTask;->access$000(Lcom/market/sdk/ServiceProxy2$ProxyTask;)V

    return-object p1
.end method
