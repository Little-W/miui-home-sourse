.class public final synthetic Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$L_iY4y-qEfZZR9BUy8wQudRuRsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

.field private final synthetic f$1:Lcom/miui/home/launcher/allapps/category/CategoryInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$L_iY4y-qEfZZR9BUy8wQudRuRsA;->f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$L_iY4y-qEfZZR9BUy8wQudRuRsA;->f$1:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$L_iY4y-qEfZZR9BUy8wQudRuRsA;->f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$L_iY4y-qEfZZR9BUy8wQudRuRsA;->f$1:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->lambda$onBindViewHolder$0$CategoryOrderAdapter(Lcom/miui/home/launcher/allapps/category/CategoryInfo;Landroid/view/View;)V

    return-void
.end method
