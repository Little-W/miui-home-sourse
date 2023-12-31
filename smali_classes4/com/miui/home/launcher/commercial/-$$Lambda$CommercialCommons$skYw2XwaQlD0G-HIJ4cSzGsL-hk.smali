.class public final synthetic Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$skYw2XwaQlD0G-HIJ4cSzGsL-hk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/ref/WeakReference;

.field private final synthetic f$1:Lcom/miui/msa/internal/preinstall/v1/ImageCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lcom/miui/msa/internal/preinstall/v1/ImageCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$skYw2XwaQlD0G-HIJ4cSzGsL-hk;->f$0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$skYw2XwaQlD0G-HIJ4cSzGsL-hk;->f$1:Lcom/miui/msa/internal/preinstall/v1/ImageCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$skYw2XwaQlD0G-HIJ4cSzGsL-hk;->f$0:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$skYw2XwaQlD0G-HIJ4cSzGsL-hk;->f$1:Lcom/miui/msa/internal/preinstall/v1/ImageCallback;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->lambda$loadIconFromCN$5(Ljava/lang/ref/WeakReference;Lcom/miui/msa/internal/preinstall/v1/ImageCallback;)V

    return-void
.end method
