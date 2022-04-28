.class public final Lcom/google/android/filament/utils/VectorKt;
.super Ljava/lang/Object;
.source "Vector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 3 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n+ 4 Vector.kt\ncom/google/android/filament/utils/Float3\n+ 5 Vector.kt\ncom/google/android/filament/utils/Float4\n*L\n1#1,1300:1\n599#1:1302\n599#1:1303\n602#1:1304\n595#1:1305\n602#1:1307\n595#1:1309\n595#1:1310\n681#1:1324\n681#1:1325\n684#1:1326\n677#1:1327\n684#1:1329\n677#1:1331\n677#1:1332\n773#1:1351\n773#1:1352\n138#2:1301\n138#2:1306\n138#2:1311\n143#2,3:1320\n41#3:1308\n29#3:1312\n29#3:1313\n29#3:1314\n29#3:1315\n33#3:1316\n33#3:1317\n33#3:1318\n33#3:1319\n41#3:1330\n29#3:1334\n29#3:1335\n29#3:1336\n29#3:1337\n29#3:1338\n29#3:1339\n33#3:1340\n33#3:1341\n33#3:1342\n33#3:1343\n33#3:1344\n33#3:1345\n29#3:1353\n29#3:1354\n29#3:1355\n29#3:1356\n29#3:1357\n29#3:1358\n29#3:1359\n29#3:1360\n33#3:1361\n33#3:1362\n33#3:1363\n33#3:1364\n33#3:1365\n33#3:1366\n33#3:1367\n33#3:1368\n322#4:1323\n322#4:1328\n322#4:1333\n327#4,4:1346\n580#5:1350\n585#5,5:1369\n360#5:1374\n*E\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n601#1:1302\n604#1:1303\n608#1:1304\n608#1:1305\n610#1:1307\n612#1:1309\n612#1:1310\n683#1:1324\n692#1:1325\n696#1:1326\n696#1:1327\n698#1:1329\n700#1:1331\n700#1:1332\n775#1:1351\n778#1:1352\n601#1:1301\n608#1:1306\n612#1:1311\n644#1,3:1320\n611#1:1308\n617#1:1312\n618#1:1313\n623#1:1314\n624#1:1315\n629#1:1316\n630#1:1317\n635#1:1318\n636#1:1319\n699#1:1330\n705#1:1334\n706#1:1335\n707#1:1336\n712#1:1337\n713#1:1338\n714#1:1339\n719#1:1340\n720#1:1341\n721#1:1342\n726#1:1343\n727#1:1344\n728#1:1345\n784#1:1353\n785#1:1354\n786#1:1355\n787#1:1356\n792#1:1357\n793#1:1358\n794#1:1359\n795#1:1360\n800#1:1361\n801#1:1362\n802#1:1363\n803#1:1364\n808#1:1365\n809#1:1366\n810#1:1367\n811#1:1368\n683#1:1323\n696#1:1328\n700#1:1333\n736#1,4:1346\n775#1:1350\n823#1,5:1369\n838#1:1374\n*E\n"
.end annotation


# direct methods
.method public static final abs(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 2

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    new-instance v1, Lcom/google/android/filament/utils/Float2;

    invoke-direct {v1, v0, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v1
.end method

.method public static final abs(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v2
.end method

.method public static final abs(Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    new-instance v3, Lcom/google/android/filament/utils/Float4;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v3
.end method

.method public static final all(Lcom/google/android/filament/utils/Bool2;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final all(Lcom/google/android/filament/utils/Bool3;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final all(Lcom/google/android/filament/utils/Bool4;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getW()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final any(Lcom/google/android/filament/utils/Bool2;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getX()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool2;->getY()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final any(Lcom/google/android/filament/utils/Bool3;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getX()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getY()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool3;->getZ()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final any(Lcom/google/android/filament/utils/Bool4;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getX()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getY()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getZ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Bool4;->getW()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final clamp(Lcom/google/android/filament/utils/Float2;FF)Lcom/google/android/filament/utils/Float2;
    .locals 2

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, p2

    if-lez v1, :cond_1

    move v0, p2

    .line 618
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpg-float v1, p0, p1

    if-gez v1, :cond_2

    move p0, p1

    goto :goto_1

    :cond_2
    cmpl-float p1, p0, p2

    if-lez p1, :cond_3

    move p0, p2

    .line 616
    :cond_3
    :goto_1
    new-instance p1, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p1, v0, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object p1
.end method

.method public static final clamp(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 4

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "min"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "max"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    move v0, v2

    .line 624
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p2

    cmpg-float v1, p0, p1

    if-gez v1, :cond_2

    move p0, p1

    goto :goto_1

    :cond_2
    cmpl-float p1, p0, p2

    if-lez p1, :cond_3

    move p0, p2

    .line 622
    :cond_3
    :goto_1
    new-instance p1, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p1, v0, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object p1
.end method

.method public static final clamp(Lcom/google/android/filament/utils/Float3;FF)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, p2

    if-lez v1, :cond_1

    move v0, p2

    .line 706
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    cmpg-float v2, v1, p1

    if-gez v2, :cond_2

    move v1, p1

    goto :goto_1

    :cond_2
    cmpl-float v2, v1, p2

    if-lez v2, :cond_3

    move v1, p2

    .line 707
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpg-float v2, p0, p1

    if-gez v2, :cond_4

    move p0, p1

    goto :goto_2

    :cond_4
    cmpl-float p1, p0, p2

    if-lez p1, :cond_5

    move p0, p2

    .line 704
    :cond_5
    :goto_2
    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object p1
.end method

.method public static final clamp(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 5

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "min"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "max"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    move v0, v2

    .line 713
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    cmpg-float v4, v1, v2

    if-gez v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    cmpl-float v2, v1, v3

    if-lez v2, :cond_3

    move v1, v3

    .line 714
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p2

    cmpg-float v2, p0, p1

    if-gez v2, :cond_4

    move p0, p1

    goto :goto_2

    :cond_4
    cmpl-float p1, p0, p2

    if-lez p1, :cond_5

    move p0, p2

    .line 711
    :cond_5
    :goto_2
    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object p1
.end method

.method public static final clamp(Lcom/google/android/filament/utils/Float4;FF)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, p2

    if-lez v1, :cond_1

    move v0, p2

    .line 785
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    cmpg-float v2, v1, p1

    if-gez v2, :cond_2

    move v1, p1

    goto :goto_1

    :cond_2
    cmpl-float v2, v1, p2

    if-lez v2, :cond_3

    move v1, p2

    .line 786
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    cmpg-float v3, v2, p1

    if-gez v3, :cond_4

    move v2, p1

    goto :goto_2

    :cond_4
    cmpl-float v3, v2, p2

    if-lez v3, :cond_5

    move v2, p2

    .line 787
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpg-float v3, p0, p1

    if-gez v3, :cond_6

    move p0, p1

    goto :goto_3

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_7

    move p0, p2

    .line 783
    :cond_7
    :goto_3
    new-instance p1, Lcom/google/android/filament/utils/Float4;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object p1
.end method

.method public static final clamp(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 6

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "min"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "max"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    move v0, v2

    .line 793
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    cmpg-float v4, v1, v2

    if-gez v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    cmpl-float v2, v1, v3

    if-lez v2, :cond_3

    move v1, v3

    .line 794
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    cmpg-float v5, v2, v3

    if-gez v5, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    cmpl-float v3, v2, v4

    if-lez v3, :cond_5

    move v2, v4

    .line 795
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p2

    cmpg-float v3, p0, p1

    if-gez v3, :cond_6

    move p0, p1

    goto :goto_3

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_7

    move p0, p2

    .line 791
    :cond_7
    :goto_3
    new-instance p1, Lcom/google/android/filament/utils/Float4;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object p1
.end method

.method public static final cross(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 5

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p1

    mul-float/2addr p0, p1

    sub-float/2addr v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public static final distance(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)F
    .locals 3

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1301
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 1302
    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result p0

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final distance(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)F
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 1324
    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p0

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    mul-float/2addr p1, v1

    add-float/2addr p0, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final distance(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)F
    .locals 5

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1350
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    .line 1351
    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result p0

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    mul-float/2addr p1, v1

    add-float/2addr p0, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v1

    mul-float/2addr p1, v1

    add-float/2addr p0, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final div(FLcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    div-float v1, p0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    div-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public static final div(FLcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    div-float v1, p0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    div-float v2, p0, v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    div-float/2addr p0, p1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public static final div(FLcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    div-float v1, p0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    div-float v2, p0, v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    div-float v3, p0, v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    div-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public static final dot(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)F
    .locals 2

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final dot(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)F
    .locals 3

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final dot(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)F
    .locals 3

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final eq(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$eq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final eq(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$eq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final eq(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "$this$eq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final eq(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "$this$eq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final eq(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 6

    const-string v0, "$this$eq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    cmpg-float v5, v5, p1

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final eq(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "$this$eq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpg-float v5, v5, v6

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final equal(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final equal(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final equal(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final equal(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final equal(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    cmpg-float v5, v5, p1

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final equal(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpg-float v5, v5, v6

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final greaterThan(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final greaterThan(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final greaterThan(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 742
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final greaterThan(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final greaterThan(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final greaterThan(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final greaterThanEqual(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final greaterThanEqual(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final greaterThanEqual(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final greaterThanEqual(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final greaterThanEqual(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    cmpl-float v5, v5, p1

    if-ltz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final greaterThanEqual(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final gt(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$gt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final gt(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$gt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final gt(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "$this$gt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final gt(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "$this$gt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final gt(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 6

    const-string v0, "$this$gt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final gt(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "$this$gt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final gte(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$gte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final gte(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$gte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final gte(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "$this$gte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final gte(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "$this$gte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final gte(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 6

    const-string v0, "$this$gte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    cmpl-float v5, v5, p1

    if-ltz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final gte(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "$this$gte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 845
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final length(Lcom/google/android/filament/utils/Float2;)F
    .locals 2

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final length(Lcom/google/android/filament/utils/Float3;)F
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final length(Lcom/google/android/filament/utils/Float4;)F
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final length2(Lcom/google/android/filament/utils/Float2;)F
    .locals 2

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public static final length2(Lcom/google/android/filament/utils/Float3;)F
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public static final length2(Lcom/google/android/filament/utils/Float4;)F
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public static final lessThan(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final lessThan(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final lessThan(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final lessThan(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final lessThan(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    cmpg-float v5, v5, p1

    if-gez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final lessThan(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final lessThanEqual(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final lessThanEqual(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final lessThanEqual(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final lessThanEqual(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final lessThanEqual(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final lessThanEqual(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 828
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final lt(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$lt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final lt(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$lt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final lt(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "$this$lt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final lt(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "$this$lt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final lt(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 5

    const-string v0, "$this$lt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    cmpg-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    cmpg-float v3, v3, p1

    if-gez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 1374
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 838
    :goto_3
    new-instance p0, Lcom/google/android/filament/utils/Bool4;

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object p0
.end method

.method public static final lt(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "$this$lt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final lte(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$lte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final lte(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$lte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final lte(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "$this$lte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final lte(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "$this$lte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final lte(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 6

    const-string v0, "$this$lte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final lte(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "$this$lte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final max(Lcom/google/android/filament/utils/Float2;)F
    .locals 1

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static final max(Lcom/google/android/filament/utils/Float3;)F
    .locals 2

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static final max(Lcom/google/android/filament/utils/Float4;)F
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static final max(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 2

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    new-instance p1, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p1, v0, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object p1
.end method

.method public static final max(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object p1
.end method

.method public static final max(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    new-instance p1, Lcom/google/android/filament/utils/Float4;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object p1
.end method

.method public static final min(Lcom/google/android/filament/utils/Float2;)F
    .locals 1

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static final min(Lcom/google/android/filament/utils/Float3;)F
    .locals 2

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static final min(Lcom/google/android/filament/utils/Float4;)F
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static final min(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 2

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    new-instance p1, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p1, v0, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object p1
.end method

.method public static final min(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object p1
.end method

.method public static final min(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    new-instance p1, Lcom/google/android/filament/utils/Float4;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object p1
.end method

.method public static final minus(FLcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    sub-float v1, p0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public static final minus(FLcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    sub-float v1, p0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    sub-float v2, p0, v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public static final minus(FLcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    sub-float v1, p0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    sub-float v2, p0, v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    sub-float v3, p0, v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public static final mix(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Float2;
    .locals 3

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v0, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 630
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    mul-float/2addr p0, v2

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    .line 628
    new-instance p1, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p1, v0, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object p1
.end method

.method public static final mix(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 5

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v2

    mul-float/2addr v0, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 636
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p2

    sub-float/2addr v3, p2

    mul-float/2addr p0, v3

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    .line 634
    new-instance p1, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p1, v0, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object p1
.end method

.method public static final mix(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Float3;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v0, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 720
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v1, v2

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    .line 721
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    mul-float/2addr p0, v2

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    .line 718
    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object p1
.end method

.method public static final mix(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v2

    mul-float/2addr v0, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 727
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    sub-float v5, v3, v4

    mul-float/2addr v1, v5

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 728
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p2

    sub-float/2addr v3, p2

    mul-float/2addr p0, v3

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    .line 725
    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object p1
.end method

.method public static final mix(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Float4;
    .locals 5

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v0, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 801
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    mul-float/2addr v1, v2

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    .line 802
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    mul-float/2addr v3, v2

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 803
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    mul-float/2addr p0, v2

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    .line 799
    new-instance p1, Lcom/google/android/filament/utils/Float4;

    invoke-direct {p1, v0, v1, v3, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object p1
.end method

.method public static final mix(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 7

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v2

    mul-float/2addr v0, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 809
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    sub-float v5, v3, v4

    mul-float/2addr v1, v5

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 810
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    sub-float v6, v3, v5

    mul-float/2addr v2, v6

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 811
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p2

    sub-float/2addr v3, p2

    mul-float/2addr p0, v3

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    .line 807
    new-instance p1, Lcom/google/android/filament/utils/Float4;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object p1
.end method

.method public static final neq(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$neq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final neq(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "$this$neq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final neq(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "$this$neq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final neq(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "$this$neq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final neq(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 6

    const-string v0, "$this$neq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    cmpg-float v5, v5, p1

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final neq(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "$this$neq"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpg-float v5, v5, v6

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final normalize(Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 605
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    mul-float/2addr p0, v1

    invoke-direct {v0, v2, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public static final normalize(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 4

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 693
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    mul-float/2addr p0, v1

    invoke-direct {v0, v2, v3, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public static final normalize(Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 5

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 779
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    mul-float/2addr p0, v1

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public static final notEqual(Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final notEqual(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Bool2;
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    new-instance v0, Lcom/google/android/filament/utils/Bool2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bool2;-><init>(ZZ)V

    return-object v0
.end method

.method public static final notEqual(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Bool3;
    .locals 5

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final notEqual(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Bool3;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    new-instance v0, Lcom/google/android/filament/utils/Bool3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Bool3;-><init>(ZZZ)V

    return-object v0
.end method

.method public static final notEqual(Lcom/google/android/filament/utils/Float4;F)Lcom/google/android/filament/utils/Bool4;
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    cmpg-float v4, v4, p1

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    cmpg-float v5, v5, p1

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final notEqual(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Bool4;
    .locals 7

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    new-instance v0, Lcom/google/android/filament/utils/Bool4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    cmpg-float v5, v5, v6

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/filament/utils/Bool4;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final plus(FLcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    add-float/2addr v1, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public static final plus(FLcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    add-float/2addr v1, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    add-float/2addr v2, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    add-float/2addr p0, p1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public static final plus(FLcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    add-float/2addr v1, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    add-float/2addr v2, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    add-float/2addr v3, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    add-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public static final reflect(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 3

    const-string v0, "i"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 1305
    new-instance v1, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    mul-float/2addr v0, p1

    invoke-direct {v1, v2, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 1306
    new-instance p1, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-direct {p1, v0, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object p1
.end method

.method public static final reflect(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 4

    const-string v0, "i"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1326
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 1327
    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    mul-float/2addr v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 1328
    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-direct {p1, v0, v2, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object p1
.end method

.method public static final refract(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;F)Lcom/google/android/filament/utils/Float2;
    .locals 4

    const-string v0, "i"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    mul-float v2, v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    sub-float/2addr v3, v1

    const/4 v1, 0x0

    cmpg-float v2, v3, v1

    if-gez v2, :cond_0

    .line 612
    new-instance p0, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p0, v1}, Lcom/google/android/filament/utils/Float2;-><init>(F)V

    goto :goto_0

    .line 1309
    :cond_0
    new-instance v1, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    mul-float/2addr p0, p2

    invoke-direct {v1, v2, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    mul-float/2addr p2, v0

    float-to-double v2, v3

    .line 612
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p0, v2

    add-float/2addr p2, p0

    .line 1310
    new-instance p0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    mul-float/2addr p2, p1

    invoke-direct {p0, v0, p2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    .line 1311
    new-instance p1, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-direct {p1, p2, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static final refract(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Float3;
    .locals 5

    const-string v0, "i"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1329
    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    mul-float v2, v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    sub-float/2addr v3, v1

    const/4 v1, 0x0

    cmpg-float v2, v3, v1

    if-gez v2, :cond_0

    .line 700
    new-instance p0, Lcom/google/android/filament/utils/Float3;

    invoke-direct {p0, v1}, Lcom/google/android/filament/utils/Float3;-><init>(F)V

    goto :goto_0

    .line 1331
    :cond_0
    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v4, p2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    mul-float/2addr p0, p2

    invoke-direct {v1, v2, v4, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    mul-float/2addr p2, v0

    float-to-double v2, v3

    .line 700
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p0, v2

    add-float/2addr p2, p0

    .line 1332
    new-instance p0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    mul-float/2addr p2, p1

    invoke-direct {p0, v0, v2, p2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 1333
    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    sub-float/2addr v1, p0

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static final times(FLcom/google/android/filament/utils/Float2;)Lcom/google/android/filament/utils/Float2;
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    mul-float/2addr v1, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public static final times(FLcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    mul-float/2addr v1, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    mul-float/2addr v2, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public static final times(FLcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    mul-float/2addr v1, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    mul-float/2addr v2, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    mul-float/2addr v3, p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object v0
.end method

.method public static final transform(Lcom/google/android/filament/utils/Float2;Lkotlin/jvm/functions/Function1;)Lcom/google/android/filament/utils/Float2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/filament/utils/Float2;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/android/filament/utils/Float2;"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 644
    invoke-static {p0, v0, v0, v1, v2}, Lcom/google/android/filament/utils/Float2;->copy$default(Lcom/google/android/filament/utils/Float2;FFILjava/lang/Object;)Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    .line 1320
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float2;->setX(F)V

    .line 1321
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float2;->setY(F)V

    return-object p0
.end method

.method public static final transform(Lcom/google/android/filament/utils/Float3;Lkotlin/jvm/functions/Function1;)Lcom/google/android/filament/utils/Float3;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/filament/utils/Float3;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/android/filament/utils/Float3;"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    .line 736
    invoke-static/range {v1 .. v6}, Lcom/google/android/filament/utils/Float3;->copy$default(Lcom/google/android/filament/utils/Float3;FFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    .line 1346
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    .line 1347
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    .line 1348
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    return-object p0
.end method

.method public static final transform(Lcom/google/android/filament/utils/Float4;Lkotlin/jvm/functions/Function1;)Lcom/google/android/filament/utils/Float4;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/filament/utils/Float4;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/android/filament/utils/Float4;"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, p0

    .line 823
    invoke-static/range {v1 .. v7}, Lcom/google/android/filament/utils/Float4;->copy$default(Lcom/google/android/filament/utils/Float4;FFFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    .line 1369
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    .line 1370
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    .line 1371
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    .line 1372
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    return-object p0
.end method

.method public static final x(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;
    .locals 5

    const-string v0, "$this$x"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p1

    mul-float/2addr p0, p1

    sub-float/2addr v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method
