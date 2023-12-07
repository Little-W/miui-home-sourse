.class public final Lio/branch/search/g5$a$a;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/g5$a;->a(Landroid/os/UserHandle;)Landroid/os/UserHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Landroid/os/UserHandle;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/g5$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/g5$a$a;

    invoke-direct {v0}, Lio/branch/search/g5$a$a;-><init>()V

    sput-object v0, Lio/branch/search/g5$a$a;->a:Lio/branch/search/g5$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/os/UserHandle;
    .locals 1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const-string v0, "Parcel.obtain()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object p0

    const-string p1, "UserHandle.readFromParcel(parcel)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/g5$a$a;->a(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method
