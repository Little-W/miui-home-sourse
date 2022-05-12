.class public final synthetic Lcom/miui/maml/component/-$$Lambda$MamlView$Uc0MUIiy0Vf72Lvpm8Hig3rnGag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/maml/component/MamlView;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/maml/component/MamlView;Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$Uc0MUIiy0Vf72Lvpm8Hig3rnGag;->f$0:Lcom/miui/maml/component/MamlView;

    iput-object p2, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$Uc0MUIiy0Vf72Lvpm8Hig3rnGag;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$Uc0MUIiy0Vf72Lvpm8Hig3rnGag;->f$2:Lcom/miui/maml/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$Uc0MUIiy0Vf72Lvpm8Hig3rnGag;->f$0:Lcom/miui/maml/component/MamlView;

    iget-object v1, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$Uc0MUIiy0Vf72Lvpm8Hig3rnGag;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$Uc0MUIiy0Vf72Lvpm8Hig3rnGag;->f$2:Lcom/miui/maml/ScreenElementRoot;

    invoke-static {v0, v1, v2}, Lcom/miui/maml/component/MamlView;->lambda$load$0(Lcom/miui/maml/component/MamlView;Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method
