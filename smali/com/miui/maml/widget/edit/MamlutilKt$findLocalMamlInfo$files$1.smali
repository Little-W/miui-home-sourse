.class final Lcom/miui/maml/widget/edit/MamlutilKt$findLocalMamlInfo$files$1;
.super Ljava/lang/Object;
.source "mamlutil.kt"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/widget/edit/MamlutilKt;->findLocalMamlInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/widget/edit/MamlutilKt$findLocalMamlInfo$files$1;->$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .line 289
    iget-object p1, p0, Lcom/miui/maml/widget/edit/MamlutilKt$findLocalMamlInfo$files$1;->$id:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/miui/maml/widget/edit/MamlutilKt$findLocalMamlInfo$files$1;->$id:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method
