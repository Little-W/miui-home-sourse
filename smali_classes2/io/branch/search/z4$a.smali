.class public final Lio/branch/search/z4$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/z4$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/o5;Ljava/lang/String;)Lio/branch/search/z4;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDir"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/z4;

    invoke-virtual {p1}, Lio/branch/search/o5;->a()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/branch/search/z4;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method
