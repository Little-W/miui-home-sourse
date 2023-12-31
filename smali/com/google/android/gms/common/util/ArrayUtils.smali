.class public final Lcom/google/android/gms/common/util/ArrayUtils;
.super Ljava/lang/Object;


# direct methods
.method public static varargs concat([[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .line 74
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_0
    move v0, v1

    move v2, v0

    .line 77
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 78
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    aget-object v0, p0, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 81
    aget-object v2, p0, v1

    array-length v2, v2

    const/4 v3, 0x1

    .line 82
    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 83
    aget-object v4, p0, v3

    .line 84
    array-length v5, v4

    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
