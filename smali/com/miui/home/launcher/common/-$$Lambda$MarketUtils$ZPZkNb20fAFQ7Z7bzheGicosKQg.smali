.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$ZPZkNb20fAFQ7Z7bzheGicosKQg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$ZPZkNb20fAFQ7Z7bzheGicosKQg;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$ZPZkNb20fAFQ7Z7bzheGicosKQg;->f$1:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$ZPZkNb20fAFQ7Z7bzheGicosKQg;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$ZPZkNb20fAFQ7Z7bzheGicosKQg;->f$1:Ljava/util/HashSet;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/MarketUtils;->lambda$startUserGuide$0(Landroid/content/Context;Ljava/util/HashSet;Ljava/lang/Void;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1
.end method
