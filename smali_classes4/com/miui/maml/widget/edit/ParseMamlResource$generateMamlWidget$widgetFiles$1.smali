.class final Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$widgetFiles$1;
.super Ljava/lang/Object;
.source "ParseMamlResource.kt"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget(Ljava/io/File;IIILjava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$widgetFiles$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$widgetFiles$1;

    invoke-direct {v0}, Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$widgetFiles$1;-><init>()V

    sput-object v0, Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$widgetFiles$1;->INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$widgetFiles$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "<anonymous parameter 0>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "widget_"

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 188
    invoke-static {p2, p0, p1, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
