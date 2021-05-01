.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$Utilities$Il4AkXKUeJlbmoKVvpRl-ewmdpw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$Il4AkXKUeJlbmoKVvpRl-ewmdpw;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$Il4AkXKUeJlbmoKVvpRl-ewmdpw;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/Utilities;->lambda$filterCollection$150(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method
