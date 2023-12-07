.class public final Lio/branch/search/j5;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$optString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static synthetic a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p0, p1}, Lio/branch/search/j5;->a(Landroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
