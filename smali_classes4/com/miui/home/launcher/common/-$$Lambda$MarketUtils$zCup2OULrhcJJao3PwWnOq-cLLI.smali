.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$zCup2OULrhcJJao3PwWnOq-cLLI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$zCup2OULrhcJJao3PwWnOq-cLLI;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$zCup2OULrhcJJao3PwWnOq-cLLI;->f$0:Landroid/content/Context;

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/MarketUtils;->lambda$startUserGuide$2(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method
