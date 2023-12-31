.class final Lcom/miui/maml/widget/edit/MamlutilKt$downloadAndCopyRight$innerFiles$1;
.super Ljava/lang/Object;
.source "mamlutil.kt"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/widget/edit/MamlutilKt;->downloadAndCopyRight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/maml/widget/edit/MamlutilKt$downloadAndCopyRight$innerFiles$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/maml/widget/edit/MamlutilKt$downloadAndCopyRight$innerFiles$1;

    invoke-direct {v0}, Lcom/miui/maml/widget/edit/MamlutilKt$downloadAndCopyRight$innerFiles$1;-><init>()V

    sput-object v0, Lcom/miui/maml/widget/edit/MamlutilKt$downloadAndCopyRight$innerFiles$1;->INSTANCE:Lcom/miui/maml/widget/edit/MamlutilKt$downloadAndCopyRight$innerFiles$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 3

    const-string p0, "file"

    .line 236
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "file.name"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    const-string v2, "widget_"

    invoke-static {p0, v2, v0, p1, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
