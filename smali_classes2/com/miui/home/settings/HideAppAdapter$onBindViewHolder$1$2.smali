.class final Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;
.super Ljava/lang/Object;
.source "HideAppAdapter.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic $buttonView:Landroid/widget/CompoundButton;

.field final synthetic this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iput-object p2, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;->$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;->accept(Z)V

    return-void
.end method

.method public final accept(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object p1, p1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    invoke-static {p1}, Lcom/miui/home/settings/HideAppAdapter;->access$getMContext$p(Lcom/miui/home/settings/HideAppAdapter;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110406

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 56
    iget-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object p1, p1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v0, v0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackRestoreHiddenApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;->$buttonView:Landroid/widget/CompoundButton;

    const-string v1, "buttonView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void
.end method
