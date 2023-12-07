.class public Lcom/mi/encrypt/VersionUtils;
.super Ljava/lang/Object;


# direct methods
.method public static getSdkVersion()Ljava/lang/String;
    .locals 3

    const-string v0, "2.4-SNAPSHOT"

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    :cond_0
    return-object v0
.end method
