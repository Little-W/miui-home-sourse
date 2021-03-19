.class public final synthetic Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$U1RAfXo1g0bi4-x3sngEfVWKexI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$U1RAfXo1g0bi4-x3sngEfVWKexI;->f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$U1RAfXo1g0bi4-x3sngEfVWKexI;->f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->lambda$destroy$2(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;)V

    return-void
.end method
