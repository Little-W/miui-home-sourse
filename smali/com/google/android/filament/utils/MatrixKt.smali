.class public final Lcom/google/android/filament/utils/MatrixKt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/MatrixKt\n+ 2 Matrix.kt\ncom/google/android/filament/utils/Mat4\n+ 3 Vector.kt\ncom/google/android/filament/utils/Float4\n+ 4 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 5 Vector.kt\ncom/google/android/filament/utils/Float3\n+ 6 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,521:1\n248#2:522\n250#2:529\n227#2:531\n232#2:533\n237#2:535\n227#2:556\n232#2:559\n237#2:562\n413#3:523\n413#3:525\n413#3:527\n413#3:530\n413#3:532\n413#3:534\n413#3:536\n413#3:557\n413#3:560\n413#3:563\n681#4:524\n681#4:526\n681#4:528\n736#4:537\n736#4:545\n736#4:550\n682#4:558\n682#4:561\n682#4:564\n678#4:565\n689#4:567\n689#4:568\n327#5:538\n328#5:540\n329#5:542\n330#5:544\n327#5,4:546\n327#5,4:551\n322#5:566\n37#6:539\n37#6:541\n37#6:543\n37#6:555\n37#6:569\n*E\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/MatrixKt\n*L\n457#1:522\n460#1:529\n462#1:531\n462#1:533\n462#1:535\n493#1:556\n493#1:559\n493#1:562\n457#1:523\n457#1:525\n457#1:527\n460#1:530\n462#1:532\n462#1:534\n462#1:536\n493#1:557\n493#1:560\n493#1:563\n457#1:524\n457#1:526\n457#1:528\n464#1:537\n465#1:545\n466#1:550\n493#1:558\n493#1:561\n493#1:564\n493#1:565\n501#1:567\n502#1:568\n464#1:538\n464#1:540\n464#1:542\n464#1:544\n465#1,4:546\n466#1,4:551\n496#1:566\n464#1:539\n464#1:541\n464#1:543\n480#1:555\n507#1:569\n*E\n"
.end annotation


# direct methods
.method public static final inverse(Lcom/google/android/filament/utils/Mat3;)Lcom/google/android/filament/utils/Mat3;
    .locals 15

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getX()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getX()Lcom/google/android/filament/utils/Float3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getX()Lcom/google/android/filament/utils/Float3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getY()Lcom/google/android/filament/utils/Float3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getY()Lcom/google/android/filament/utils/Float3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getY()Lcom/google/android/filament/utils/Float3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getZ()Lcom/google/android/filament/utils/Float3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getZ()Lcom/google/android/filament/utils/Float3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getZ()Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    mul-float v8, v4, p0

    mul-float v9, v5, v7

    sub-float/2addr v8, v9

    mul-float v9, v5, v6

    mul-float v10, v3, p0

    sub-float/2addr v9, v10

    mul-float v10, v3, v7

    mul-float v11, v4, v6

    sub-float/2addr v10, v11

    mul-float v11, v0, v8

    mul-float v12, v1, v9

    add-float/2addr v11, v12

    mul-float v12, v2, v10

    add-float/2addr v11, v12

    sget-object v12, Lcom/google/android/filament/utils/Mat3;->Companion:Lcom/google/android/filament/utils/Mat3$Companion;

    const/16 v13, 0x9

    new-array v13, v13, [F

    div-float/2addr v8, v11

    const/4 v14, 0x0

    aput v8, v13, v14

    div-float/2addr v9, v11

    const/4 v8, 0x1

    aput v9, v13, v8

    div-float/2addr v10, v11

    const/4 v8, 0x2

    aput v10, v13, v8

    mul-float v8, v2, v7

    mul-float v9, v1, p0

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    const/4 v9, 0x3

    aput v8, v13, v9

    mul-float/2addr p0, v0

    mul-float v8, v2, v6

    sub-float/2addr p0, v8

    div-float/2addr p0, v11

    const/4 v8, 0x4

    aput p0, v13, v8

    mul-float/2addr v6, v1

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    const/4 p0, 0x5

    aput v6, v13, p0

    mul-float p0, v1, v5

    mul-float v6, v2, v4

    sub-float/2addr p0, v6

    div-float/2addr p0, v11

    const/4 v6, 0x6

    aput p0, v13, v6

    mul-float/2addr v2, v3

    mul-float/2addr v5, v0

    sub-float/2addr v2, v5

    div-float/2addr v2, v11

    const/4 p0, 0x7

    aput v2, v13, p0

    mul-float/2addr v0, v4

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    const/16 p0, 0x8

    aput v0, v13, p0

    invoke-virtual {v12, v13}, Lcom/google/android/filament/utils/Mat3$Companion;->of([F)Lcom/google/android/filament/utils/Mat3;

    move-result-object p0

    return-object p0
.end method

.method public static final inverse(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;
    .locals 18

    const-string v0, "m"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Mat4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v13

    mul-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v15

    mul-float/2addr v15, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v5

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v6

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v17

    mul-float v17, v17, v4

    add-float v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v17

    mul-float v17, v17, v7

    add-float v16, v16, v17

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v15

    mul-float/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v8

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v11

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v17

    mul-float v17, v17, v9

    add-float v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v17

    mul-float v17, v17, v10

    add-float v16, v16, v17

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v15

    mul-float/2addr v15, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v9

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v12

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v17

    mul-float v17, v17, v8

    add-float v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v17

    mul-float v17, v17, v13

    add-float v16, v16, v17

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v15

    mul-float/2addr v15, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v10

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v13

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v16

    mul-float v16, v16, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v17

    mul-float v17, v17, v11

    add-float v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v17

    mul-float v17, v17, v12

    add-float v16, v16, v17

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v15

    mul-float/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v16

    mul-float v16, v16, v4

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v16

    mul-float v16, v16, v7

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v16

    mul-float v16, v16, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v17

    mul-float v17, v17, v5

    add-float v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v17

    mul-float v17, v17, v6

    add-float v16, v16, v17

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v15

    mul-float/2addr v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v15

    mul-float/2addr v15, v9

    add-float/2addr v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v15

    mul-float/2addr v15, v10

    add-float/2addr v2, v15

    invoke-virtual {v14, v2}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v15

    mul-float/2addr v3, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v15

    mul-float/2addr v15, v8

    add-float/2addr v3, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v15

    mul-float/2addr v15, v11

    add-float/2addr v3, v15

    sub-float/2addr v14, v3

    invoke-virtual {v2, v14}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    mul-float/2addr v5, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    mul-float/2addr v8, v3

    add-float/2addr v5, v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    mul-float/2addr v3, v13

    add-float/2addr v5, v3

    invoke-virtual {v2, v5}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    mul-float/2addr v9, v5

    add-float/2addr v4, v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    mul-float/2addr v5, v12

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    mul-float/2addr v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    mul-float/2addr v11, v3

    add-float/2addr v6, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    mul-float/2addr v12, v3

    add-float/2addr v6, v12

    invoke-virtual {v2, v6}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    mul-float/2addr v7, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    mul-float/2addr v10, v4

    add-float/2addr v7, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    mul-float/2addr v13, v4

    add-float/2addr v7, v13

    sub-float/2addr v3, v7

    invoke-virtual {v2, v3}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v13

    mul-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v15

    mul-float/2addr v15, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v5

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v6

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v17

    mul-float v17, v17, v4

    add-float v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v17

    mul-float v17, v17, v7

    add-float v16, v16, v17

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v15

    mul-float/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v8

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v11

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v17

    mul-float v17, v17, v9

    add-float v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v17

    mul-float v17, v17, v10

    add-float v16, v16, v17

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v15

    mul-float/2addr v15, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v9

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v12

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v17

    mul-float v17, v17, v8

    add-float v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v17

    mul-float v17, v17, v13

    add-float v16, v16, v17

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v15

    mul-float/2addr v15, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v10

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v13

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v16

    mul-float v16, v16, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v17

    mul-float v17, v17, v11

    add-float v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v17

    mul-float v17, v17, v12

    add-float v16, v16, v17

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v15

    mul-float/2addr v15, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v16

    mul-float v16, v16, v7

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v16

    mul-float v16, v16, v3

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v16

    mul-float v16, v16, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v17

    mul-float v17, v17, v2

    add-float v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v17

    mul-float v17, v17, v5

    add-float v16, v16, v17

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v15

    mul-float/2addr v15, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v16

    mul-float v2, v2, v16

    add-float/2addr v15, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    mul-float/2addr v2, v9

    add-float/2addr v15, v2

    invoke-virtual {v14, v15}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v15

    mul-float/2addr v15, v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v16

    mul-float v16, v16, v11

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v16

    mul-float v3, v3, v16

    add-float/2addr v15, v3

    sub-float/2addr v14, v15

    invoke-virtual {v2, v14}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    mul-float/2addr v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    mul-float/2addr v3, v13

    add-float/2addr v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    mul-float/2addr v5, v3

    add-float/2addr v8, v5

    invoke-virtual {v2, v8}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    mul-float/2addr v5, v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v8

    mul-float/2addr v4, v8

    add-float/2addr v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    mul-float/2addr v9, v4

    add-float/2addr v5, v9

    sub-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    mul-float/2addr v12, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    mul-float/2addr v6, v3

    add-float/2addr v12, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    mul-float/2addr v11, v3

    add-float/2addr v12, v11

    invoke-virtual {v2, v12}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    mul-float/2addr v10, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    mul-float/2addr v13, v4

    add-float/2addr v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    mul-float/2addr v7, v4

    add-float/2addr v10, v7

    sub-float/2addr v3, v10

    invoke-virtual {v2, v3}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/google/android/filament/utils/Mat4;->div(F)Lcom/google/android/filament/utils/Mat4;

    move-result-object v0

    return-object v0
.end method

.method public static final lookAt(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;
    .locals 4

    const-string v0, "eye"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "up"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    sub-float/2addr p1, v3

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-static {p0, v0, p2}, Lcom/google/android/filament/utils/MatrixKt;->lookTowards(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lookAt$default(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;ILjava/lang/Object;)Lcom/google/android/filament/utils/Mat4;
    .locals 6

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    new-instance p2, Lcom/google/android/filament/utils/Float3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/MatrixKt;->lookAt(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    return-object p0
.end method

.method public static final lookTowards(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;
    .locals 6

    const-string v0, "eye"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forward"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "up"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/filament/utils/VectorKt;->normalize(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;

    move-result-object p1

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p2

    mul-float/2addr v4, p2

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-static {v0}, Lcom/google/android/filament/utils/VectorKt;->normalize(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;

    move-result-object p2

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-static {v0}, Lcom/google/android/filament/utils/VectorKt;->normalize(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    new-instance v1, Lcom/google/android/filament/utils/Mat4;

    new-instance v2, Lcom/google/android/filament/utils/Float4;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, p2, v5, v4, v3}, Lcom/google/android/filament/utils/Float4;-><init>(Lcom/google/android/filament/utils/Float3;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p2, Lcom/google/android/filament/utils/Float4;

    invoke-direct {p2, v0, v5, v4, v3}, Lcom/google/android/filament/utils/Float4;-><init>(Lcom/google/android/filament/utils/Float3;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-direct {v0, p1, v5, v4, v3}, Lcom/google/android/filament/utils/Float4;-><init>(Lcom/google/android/filament/utils/Float3;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/google/android/filament/utils/Float4;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, p0, v3}, Lcom/google/android/filament/utils/Float4;-><init>(Lcom/google/android/filament/utils/Float3;F)V

    invoke-direct {v1, v2, p2, v0, p1}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object v1
.end method

.method public static synthetic lookTowards$default(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;ILjava/lang/Object;)Lcom/google/android/filament/utils/Mat4;
    .locals 6

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    new-instance p2, Lcom/google/android/filament/utils/Float3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/MatrixKt;->lookTowards(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    return-object p0
.end method

.method public static final normal(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;
    .locals 6

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v1

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    new-instance v3, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    new-instance v3, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    div-float v4, v2, v4

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-static {v0}, Lcom/google/android/filament/utils/MatrixKt;->scale(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/filament/utils/Mat4;->times(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    return-object p0
.end method

.method public static final ortho(FFFFFF)Lcom/google/android/filament/utils/Mat4;
    .locals 25

    new-instance v0, Lcom/google/android/filament/utils/Mat4;

    new-instance v8, Lcom/google/android/filament/utils/Float4;

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v1, p1, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v2, v10, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/google/android/filament/utils/Float4;

    sub-float v2, p3, p2

    div-float v13, v10, v2

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xd

    const/16 v17, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/google/android/filament/utils/Float4;

    sub-float v4, p5, p4

    const/high16 v5, -0x40000000    # -2.0f

    div-float v21, v5, v4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xb

    const/16 v24, 0x0

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v24}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/google/android/filament/utils/Float4;

    add-float v6, p1, p0

    neg-float v6, v6

    sub-float v7, p1, p0

    div-float/2addr v6, v7

    add-float v7, p3, p2

    neg-float v7, v7

    div-float/2addr v7, v2

    add-float v2, p5, p4

    neg-float v2, v2

    div-float/2addr v2, v4

    invoke-direct {v5, v6, v7, v2, v9}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    invoke-direct {v0, v8, v1, v3, v5}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object v0
.end method

.method public static final perspective(FFFF)Lcom/google/android/filament/utils/Mat4;
    .locals 22

    const v0, 0x3c8efa35

    mul-float v0, v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v4, v1, v0

    add-float v0, p3, p2

    sub-float v1, p3, p2

    div-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, p3

    mul-float v2, v2, p2

    div-float v1, v2, v1

    div-float v6, v4, p1

    new-instance v12, Lcom/google/android/filament/utils/Mat4;

    new-instance v13, Lcom/google/android/filament/utils/Float4;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xe

    const/4 v11, 0x0

    move-object v5, v13

    invoke-direct/range {v5 .. v11}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v14, Lcom/google/android/filament/utils/Float4;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v8, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v8}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/google/android/filament/utils/Float4;

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x3

    move-object v5, v2

    move v8, v0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/google/android/filament/utils/Float4;

    neg-float v1, v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xb

    const/16 v21, 0x0

    move-object v15, v0

    move/from16 v18, v1

    invoke-direct/range {v15 .. v21}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v12, v13, v14, v2, v0}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object v12
.end method

.method public static final rotation(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;
    .locals 13

    const-string v0, "d"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/google/android/filament/utils/Float3;->copy$default(Lcom/google/android/filament/utils/Float3;FFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Lcom/google/android/filament/utils/Float3;->copy$default(Lcom/google/android/filament/utils/Float3;FFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    invoke-static/range {v7 .. v12}, Lcom/google/android/filament/utils/Float3;->copy$default(Lcom/google/android/filament/utils/Float3;FFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/google/android/filament/utils/Float3;->setX(F)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/google/android/filament/utils/Float3;->setY(F)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/google/android/filament/utils/Float3;->setZ(F)V

    sget-object v1, Lcom/google/android/filament/utils/Mat4;->Companion:Lcom/google/android/filament/utils/Mat4$Companion;

    const/16 v2, 0x10

    new-array v2, v2, [F

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v3, v2, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    const/4 v5, 0x4

    aput v4, v2, v5

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x5

    aput v4, v2, v5

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x6

    aput v4, v2, v5

    const/4 v4, 0x7

    aput v3, v2, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    neg-float v4, v4

    const/16 v5, 0x8

    aput v4, v2, v5

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p0

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr p0, v4

    const/16 v4, 0x9

    aput p0, v2, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p0

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    mul-float/2addr p0, v0

    const/16 v0, 0xa

    aput p0, v2, v0

    const/16 p0, 0xb

    aput v3, v2, p0

    const/16 p0, 0xc

    aput v3, v2, p0

    const/16 p0, 0xd

    aput v3, v2, p0

    const/16 p0, 0xe

    aput v3, v2, p0

    const/16 p0, 0xf

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, p0

    invoke-virtual {v1, v2}, Lcom/google/android/filament/utils/Mat4$Companion;->of([F)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    return-object p0
.end method

.method public static final rotation(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Mat4;
    .locals 13

    const-string v0, "axis"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    const v2, 0x3c8efa35

    mul-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p1

    sget-object v5, Lcom/google/android/filament/utils/Mat4;->Companion:Lcom/google/android/filament/utils/Mat4$Companion;

    const/16 v6, 0x10

    new-array v6, v6, [F

    mul-float v7, v0, v0

    mul-float/2addr v7, v4

    add-float/2addr v7, p1

    const/4 v8, 0x0

    aput v7, v6, v8

    mul-float v7, v0, v1

    mul-float/2addr v7, v4

    mul-float v8, p0, v2

    sub-float v9, v7, v8

    const/4 v10, 0x1

    aput v9, v6, v10

    mul-float v9, v0, p0

    mul-float/2addr v9, v4

    mul-float v10, v1, v2

    add-float v11, v9, v10

    const/4 v12, 0x2

    aput v11, v6, v12

    const/4 v11, 0x0

    const/4 v12, 0x3

    aput v11, v6, v12

    add-float/2addr v7, v8

    const/4 v8, 0x4

    aput v7, v6, v8

    mul-float v7, v1, v1

    mul-float/2addr v7, v4

    add-float/2addr v7, p1

    const/4 v8, 0x5

    aput v7, v6, v8

    mul-float/2addr v1, p0

    mul-float/2addr v1, v4

    mul-float/2addr v0, v2

    sub-float v2, v1, v0

    const/4 v7, 0x6

    aput v2, v6, v7

    const/4 v2, 0x7

    aput v11, v6, v2

    sub-float/2addr v9, v10

    const/16 v2, 0x8

    aput v9, v6, v2

    add-float/2addr v1, v0

    const/16 v0, 0x9

    aput v1, v6, v0

    mul-float/2addr p0, p0

    mul-float/2addr p0, v4

    add-float/2addr p0, p1

    const/16 p1, 0xa

    aput p0, v6, p1

    const/16 p0, 0xb

    aput v11, v6, p0

    const/16 p0, 0xc

    aput v11, v6, p0

    const/16 p0, 0xd

    aput v11, v6, p0

    const/16 p0, 0xe

    aput v11, v6, p0

    const/16 p0, 0xf

    aput v3, v6, p0

    invoke-virtual {v5, v6}, Lcom/google/android/filament/utils/Mat4$Companion;->of([F)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    return-object p0
.end method

.method public static final rotation(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;
    .locals 11

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-static {v1}, Lcom/google/android/filament/utils/VectorKt;->normalize(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-static {v1}, Lcom/google/android/filament/utils/VectorKt;->normalize(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-static {v0}, Lcom/google/android/filament/utils/VectorKt;->normalize(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;

    move-result-object v7

    new-instance p0, Lcom/google/android/filament/utils/Mat4;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public static final scale(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;
    .locals 24

    const-string v0, "s"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Mat4;

    new-instance v9, Lcom/google/android/filament/utils/Float4;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/google/android/filament/utils/Float4;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v12

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xd

    const/16 v16, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/google/android/filament/utils/Float4;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v20

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xb

    const/16 v23, 0x0

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final scale(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;
    .locals 5

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v1

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p0

    invoke-direct {v2, v3, v4, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p0

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    mul-float/2addr p0, v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr p0, v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    mul-float/2addr v3, v2

    add-float/2addr p0, v3

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p0, v2

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-static {v2}, Lcom/google/android/filament/utils/MatrixKt;->scale(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    return-object p0
.end method

.method public static final translation(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;
    .locals 8

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Mat4;

    new-instance v5, Lcom/google/android/filament/utils/Float4;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v5, p0, v1}, Lcom/google/android/filament/utils/Float4;-><init>(Lcom/google/android/filament/utils/Float3;F)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final translation(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;
    .locals 3

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-static {v0}, Lcom/google/android/filament/utils/MatrixKt;->translation(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    return-object p0
.end method

.method public static final transpose(Lcom/google/android/filament/utils/Mat2;)Lcom/google/android/filament/utils/Mat2;
    .locals 4

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Mat2;

    new-instance v1, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat2;->getX()Lcom/google/android/filament/utils/Float2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat2;->getY()Lcom/google/android/filament/utils/Float2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    new-instance v2, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat2;->getX()Lcom/google/android/filament/utils/Float2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat2;->getY()Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    invoke-direct {v2, v3, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Mat2;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;)V

    return-object v0
.end method

.method public static final transpose(Lcom/google/android/filament/utils/Mat3;)Lcom/google/android/filament/utils/Mat3;
    .locals 6

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Mat3;

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getX()Lcom/google/android/filament/utils/Float3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getY()Lcom/google/android/filament/utils/Float3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getZ()Lcom/google/android/filament/utils/Float3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getX()Lcom/google/android/filament/utils/Float3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getY()Lcom/google/android/filament/utils/Float3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getZ()Lcom/google/android/filament/utils/Float3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    new-instance v3, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getX()Lcom/google/android/filament/utils/Float3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getY()Lcom/google/android/filament/utils/Float3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat3;->getZ()Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    invoke-direct {v3, v4, v5, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object v0
.end method

.method public static final transpose(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;
    .locals 8

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Mat4;

    new-instance v1, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance v2, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance v3, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance v4, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-direct {v4, v5, v6, v7, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object v0
.end method
