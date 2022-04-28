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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->path:Ljava/lang/String;

    const/4 p1, 0x1

    .line 136
    iput p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->mode:I

    return-void
.end method


# virtual methods
.method public final create()Lcom/miui/maml/component/MamlView;
    .locals 7

    .line 141
    new-instance v6, Lcom/miui/maml/component/MamlView;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->innerPath:Ljava/lang/String;

    iget v4, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->mode:I

    iget-boolean v5, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->autoRemoveCache:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v6
.end method

.method public final getAutoRemoveCache()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->autoRemoveCache:Z

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getInnerPath()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->innerPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->mode:I

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getResetVar()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->resetVar:Z

    return v0
.end method

.method public final setAutoRemoveCache(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->autoRemoveCache:Z

    return-void
.end method

.method public final setInnerPath(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->innerPath:Ljava/lang/String;

    return-void
.end method

.method public final setMode(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->mode:I

    return-void
.end method

.method public final setResetVar(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/miui/maml/widget/edit/MamlViewBuilder;->resetVar:Z

    return-void
.end method
