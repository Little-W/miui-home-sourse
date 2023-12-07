.class public final Lio/branch/search/g5;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/g5$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/g5$a;

.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/g5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/g5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/g5;->Companion:Lio/branch/search/g5$a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/branch/search/g5;->a:Ljava/util/Map;

    return-void
.end method

.method public static final a(Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/l;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lio/branch/search/g5;->Companion:Lio/branch/search/g5$a;

    invoke-virtual {v0, p0, p1, p2}, Lio/branch/search/g5$a;->a(Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/l;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Lio/branch/search/l;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lio/branch/search/g5;->Companion:Lio/branch/search/g5$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/branch/search/g5$a;->a(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Lio/branch/search/l;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lio/branch/search/g5;->a:Ljava/util/Map;

    return-object v0
.end method
