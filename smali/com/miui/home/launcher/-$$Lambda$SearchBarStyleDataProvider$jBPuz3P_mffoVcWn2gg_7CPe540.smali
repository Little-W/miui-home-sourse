.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleDataProvider$jBPuz3P_mffoVcWn2gg_7CPe540;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/SearchBarStyleDataProvider;

.field private final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/SearchBarStyleDataProvider;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleDataProvider$jBPuz3P_mffoVcWn2gg_7CPe540;->f$0:Lcom/miui/home/launcher/SearchBarStyleDataProvider;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleDataProvider$jBPuz3P_mffoVcWn2gg_7CPe540;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleDataProvider$jBPuz3P_mffoVcWn2gg_7CPe540;->f$0:Lcom/miui/home/launcher/SearchBarStyleDataProvider;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleDataProvider$jBPuz3P_mffoVcWn2gg_7CPe540;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->lambda$deleteCache$2$SearchBarStyleDataProvider(Landroid/os/Bundle;)V

    return-void
.end method
