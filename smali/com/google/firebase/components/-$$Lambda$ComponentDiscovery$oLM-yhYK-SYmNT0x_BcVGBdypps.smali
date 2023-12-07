.class public final synthetic Lcom/google/firebase/components/-$$Lambda$ComponentDiscovery$oLM-yhYK-SYmNT0x_BcVGBdypps;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/-$$Lambda$ComponentDiscovery$oLM-yhYK-SYmNT0x_BcVGBdypps;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/components/-$$Lambda$ComponentDiscovery$oLM-yhYK-SYmNT0x_BcVGBdypps;->f$0:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/firebase/components/ComponentDiscovery;->lambda$discoverLazy$0(Ljava/lang/String;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object p0

    return-object p0
.end method
