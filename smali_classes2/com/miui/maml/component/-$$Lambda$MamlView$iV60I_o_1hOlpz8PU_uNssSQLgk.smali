.class public final synthetic Lcom/miui/maml/component/-$$Lambda$MamlView$iV60I_o_1hOlpz8PU_uNssSQLgk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/maml/component/MamlView;

.field private final synthetic f$1:Lcom/miui/maml/ScreenElementRoot;

.field private final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/maml/component/MamlView;Lcom/miui/maml/ScreenElementRoot;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$iV60I_o_1hOlpz8PU_uNssSQLgk;->f$0:Lcom/miui/maml/component/MamlView;

    iput-object p2, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$iV60I_o_1hOlpz8PU_uNssSQLgk;->f$1:Lcom/miui/maml/ScreenElementRoot;

    iput-object p3, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$iV60I_o_1hOlpz8PU_uNssSQLgk;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$iV60I_o_1hOlpz8PU_uNssSQLgk;->f$0:Lcom/miui/maml/component/MamlView;

    iget-object v1, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$iV60I_o_1hOlpz8PU_uNssSQLgk;->f$1:Lcom/miui/maml/ScreenElementRoot;

    iget-object v2, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$iV60I_o_1hOlpz8PU_uNssSQLgk;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/miui/maml/component/MamlView;->lambda$load$1(Lcom/miui/maml/component/MamlView;Lcom/miui/maml/ScreenElementRoot;Landroid/content/Context;)V

    return-void
.end method
