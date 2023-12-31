.class public final Lcom/miui/maml/widget/edit/MamlViewBuilder;
.super Ljava/lang/Object;
.source "widgetEditSave.kt"


# instance fields
.field private autoRemoveCache:Z

.field private final context:Landroid/content/Context;

.field private innerPath:Ljava/lang/String;

.field private mode:I

.field private final path:Ljava/lang/String;

.field private resetVar:Z

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->type:Ljava/lang/String;

    const/4 p1, 0x1

    .line 182
    iput p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->mode:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 180
    check-cast p3, Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/MamlViewBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final create()Lcom/miui/maml/component/MamlView;
    .locals 8

    .line 187
    new-instance v7, Lcom/miui/maml/component/MamlView;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->innerPath:Ljava/lang/String;

    iget v4, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->mode:I

    iget-boolean v5, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->autoRemoveCache:Z

    iget-object v6, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->type:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    return-object v7
.end method

.method public final getAutoRemoveCache()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->autoRemoveCache:Z

    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getInnerPath()Ljava/lang/String;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->innerPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getMode()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->mode:I

    return p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getResetVar()Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->resetVar:Z

    return p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final setAutoRemoveCache(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->autoRemoveCache:Z

    return-void
.end method

.method public final setInnerPath(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->innerPath:Ljava/lang/String;

    return-void
.end method

.method public final setMode(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->mode:I

    return-void
.end method

.method public final setResetVar(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->resetVar:Z

    return-void
.end method
