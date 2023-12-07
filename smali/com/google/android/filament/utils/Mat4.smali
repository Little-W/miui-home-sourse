.class public final Lcom/google/android/filament/utils/Mat4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/Mat4$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat4\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float4\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 4 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,521:1\n227#1:549\n232#1:551\n237#1:553\n413#2:522\n415#2,4:523\n413#2:527\n415#2,4:528\n413#2:532\n415#2,4:533\n413#2:537\n415#2,4:538\n413#2:542\n413#2:544\n413#2:546\n413#2:548\n413#2:550\n413#2:552\n413#2:554\n413#2:562\n413#2:563\n413#2:564\n438#2,5:565\n564#2:570\n564#2:571\n564#2:572\n564#2:573\n565#2:574\n565#2:575\n565#2:576\n565#2:577\n566#2:578\n566#2:579\n566#2:580\n566#2:581\n567#2:582\n567#2:583\n567#2:584\n567#2:585\n681#3:543\n681#3:545\n681#3:547\n776#3:586\n776#3:587\n776#3:588\n776#3:589\n776#3:590\n776#3:591\n776#3:592\n776#3:593\n776#3:594\n776#3:595\n776#3:596\n776#3:597\n776#3:598\n776#3:599\n776#3:600\n776#3:601\n776#3:602\n776#3:603\n776#3:604\n776#3:605\n35#4:555\n35#4:556\n35#4:557\n35#4:558\n35#4:559\n35#4:560\n35#4:561\n*E\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat4\n*L\n253#1:549\n254#1:551\n255#1:553\n227#1:522\n229#1,4:523\n232#1:527\n234#1,4:528\n237#1:532\n239#1,4:533\n242#1:537\n244#1,4:538\n248#1:542\n248#1:544\n248#1:546\n250#1:548\n253#1:550\n254#1:552\n255#1:554\n266#1:562\n266#1:563\n266#1:564\n289#1,5:565\n311#1:570\n311#1:571\n311#1:572\n311#1:573\n312#1:574\n312#1:575\n312#1:576\n312#1:577\n313#1:578\n313#1:579\n313#1:580\n313#1:581\n314#1:582\n314#1:583\n314#1:584\n314#1:585\n248#1:543\n248#1:545\n248#1:547\n319#1:586\n319#1:587\n319#1:588\n319#1:589\n320#1:590\n320#1:591\n320#1:592\n320#1:593\n321#1:594\n321#1:595\n321#1:596\n321#1:597\n322#1:598\n322#1:599\n322#1:600\n322#1:601\n328#1:602\n328#1:603\n328#1:604\n328#1:605\n258#1:555\n258#1:556\n259#1:557\n259#1:558\n261#1:559\n261#1:560\n261#1:561\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/filament/utils/Mat4$Companion;


# instance fields
.field private w:Lcom/google/android/filament/utils/Float4;

.field private x:Lcom/google/android/filament/utils/Float4;

.field private y:Lcom/google/android/filament/utils/Float4;

.field private z:Lcom/google/android/filament/utils/Float4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Mat4$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/filament/utils/Mat4$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/filament/utils/Mat4;->Companion:Lcom/google/android/filament/utils/Mat4$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V
    .locals 4

    const-string v0, "right"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "up"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forward"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/Float4;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v2, v1}, Lcom/google/android/filament/utils/Float4;-><init>(Lcom/google/android/filament/utils/Float3;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/google/android/filament/utils/Float4;

    invoke-direct {p1, p2, v3, v2, v1}, Lcom/google/android/filament/utils/Float4;-><init>(Lcom/google/android/filament/utils/Float3;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p2, Lcom/google/android/filament/utils/Float4;

    invoke-direct {p2, p3, v3, v2, v1}, Lcom/google/android/filament/utils/Float4;-><init>(Lcom/google/android/filament/utils/Float3;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p3, Lcom/google/android/filament/utils/Float4;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, v1}, Lcom/google/android/filament/utils/Float4;-><init>(Lcom/google/android/filament/utils/Float3;F)V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    new-instance p4, Lcom/google/android/filament/utils/Float3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V
    .locals 1

    const-string/jumbo v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "z"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "w"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    iput-object p2, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    iput-object p3, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    iput-object p4, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    new-instance p1, Lcom/google/android/filament/utils/Float4;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    new-instance p2, Lcom/google/android/filament/utils/Float4;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    new-instance p3, Lcom/google/android/filament/utils/Float4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0xb

    const/4 v6, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    new-instance p4, Lcom/google/android/filament/utils/Float4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Mat4;)V
    .locals 10

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/google/android/filament/utils/Float4;->copy$default(Lcom/google/android/filament/utils/Float4;FFFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-static/range {v1 .. v7}, Lcom/google/android/filament/utils/Float4;->copy$default(Lcom/google/android/filament/utils/Float4;FFFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float4;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/filament/utils/Float4;->copy$default(Lcom/google/android/filament/utils/Float4;FFFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/google/android/filament/utils/Float4;->copy$default(Lcom/google/android/filament/utils/Float4;FFFFILjava/lang/Object;)Lcom/google/android/filament/utils/Float4;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/filament/utils/Mat4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;ILjava/lang/Object;)Lcom/google/android/filament/utils/Mat4;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Mat4;->copy(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/google/android/filament/utils/Float4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    return-object p0
.end method

.method public final component2()Lcom/google/android/filament/utils/Float4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    return-object p0
.end method

.method public final component3()Lcom/google/android/filament/utils/Float4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    return-object p0
.end method

.method public final component4()Lcom/google/android/filament/utils/Float4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    return-object p0
.end method

.method public final copy(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Mat4;
    .locals 0

    const-string/jumbo p0, "x"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "y"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "z"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "w"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/filament/utils/Mat4;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object p0
.end method

.method public final dec()Lcom/google/android/filament/utils/Mat4;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->dec()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->dec()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->dec()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->dec()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    return-object p0
.end method

.method public final div(F)Lcom/google/android/filament/utils/Mat4;
    .locals 7

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    new-instance v1, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    div-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    div-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    div-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    div-float/2addr v0, p1

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    new-instance v2, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    div-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    div-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    div-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    div-float/2addr v0, p1

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    new-instance v3, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    div-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    div-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    div-float/2addr v6, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    div-float/2addr v0, p1

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    div-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    div-float/2addr v5, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    div-float/2addr v6, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    div-float/2addr p0, p1

    invoke-direct {v0, v4, v5, v6, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance p0, Lcom/google/android/filament/utils/Mat4;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/filament/utils/Mat4;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/filament/utils/Mat4;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    iget-object p1, p1, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final get(II)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat4;->get(I)Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float4;->get(I)F

    move-result p0

    return p0
.end method

.method public final get(Lcom/google/android/filament/utils/MatrixColumn;I)F
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat4;->get(Lcom/google/android/filament/utils/MatrixColumn;)Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Float4;->get(I)F

    move-result p0

    return p0
.end method

.method public final get(I)Lcom/google/android/filament/utils/Float4;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be in 0..3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    :goto_0
    return-object p0
.end method

.method public final get(Lcom/google/android/filament/utils/MatrixColumn;)Lcom/google/android/filament/utils/Float4;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/filament/utils/Mat4$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/MatrixColumn;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    :goto_0
    return-object p0
.end method

.method public final getForward()Lcom/google/android/filament/utils/Float3;
    .locals 3

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

    return-object v0
.end method

.method public final getPosition()Lcom/google/android/filament/utils/Float3;
    .locals 3

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

    return-object v0
.end method

.method public final getRight()Lcom/google/android/filament/utils/Float3;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final getRotation()Lcom/google/android/filament/utils/Float3;
    .locals 9

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

    move-result-object v0

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

    invoke-static {v2}, Lcom/google/android/filament/utils/VectorKt;->normalize(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;

    move-result-object v1

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

    invoke-static {v2}, Lcom/google/android/filament/utils/VectorKt;->normalize(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    const v4, 0x42652ee0

    if-gtz v2, :cond_0

    const/high16 p0, -0x3d4c0000    # -90.0f

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    float-to-double v5, v0

    float-to-double v0, v1

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v1, p0, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_1

    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    neg-float v1, v1

    float-to-double v5, v0

    float-to-double v0, v1

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v1, p0, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v2, v2

    neg-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    float-to-double v5, v3

    float-to-double v7, p0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float p0, v5

    neg-float p0, p0

    mul-float/2addr p0, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v1

    float-to-double v5, v0

    float-to-double v0, v1

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    :goto_0
    return-object v1
.end method

.method public final getScale()Lcom/google/android/filament/utils/Float3;
    .locals 5

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

    return-object v2
.end method

.method public final getTranslation()Lcom/google/android/filament/utils/Float3;
    .locals 3

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

    return-object v0
.end method

.method public final getUp()Lcom/google/android/filament/utils/Float3;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object v0
.end method

.method public final getUpperLeft()Lcom/google/android/filament/utils/Mat3;
    .locals 5

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

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p0

    invoke-direct {v0, v3, v4, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    new-instance p0, Lcom/google/android/filament/utils/Mat3;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/filament/utils/Mat3;-><init>(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V

    return-object p0
.end method

.method public final getW()Lcom/google/android/filament/utils/Float4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    return-object p0
.end method

.method public final getX()Lcom/google/android/filament/utils/Float4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    return-object p0
.end method

.method public final getY()Lcom/google/android/filament/utils/Float4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    return-object p0
.end method

.method public final getZ()Lcom/google/android/filament/utils/Float4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final inc()Lcom/google/android/filament/utils/Mat4;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->inc()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->inc()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->inc()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->inc()Lcom/google/android/filament/utils/Float4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    return-object p0
.end method

.method public final invoke(II)F
    .locals 0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/Mat4;->get(I)Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->get(I)F

    move-result p0

    return p0
.end method

.method public final invoke(IIF)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/filament/utils/Mat4;->set(IIF)V

    return-void
.end method

.method public final minus(F)Lcom/google/android/filament/utils/Mat4;
    .locals 7

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    new-instance v1, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    new-instance v2, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    sub-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    new-instance v3, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    sub-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    sub-float/2addr v6, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    sub-float/2addr v5, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    sub-float/2addr v6, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-direct {v0, v4, v5, v6, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance p0, Lcom/google/android/filament/utils/Mat4;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object p0
.end method

.method public final plus(F)Lcom/google/android/filament/utils/Mat4;
    .locals 7

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    new-instance v1, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    add-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    add-float/2addr v0, p1

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    new-instance v2, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    add-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    add-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    add-float/2addr v0, p1

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    new-instance v3, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    add-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    add-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    add-float/2addr v6, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    add-float/2addr v0, p1

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    add-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    add-float/2addr v5, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    add-float/2addr v6, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    add-float/2addr p0, p1

    invoke-direct {v0, v4, v5, v6, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance p0, Lcom/google/android/filament/utils/Mat4;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object p0
.end method

.method public final set(IIF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat4;->get(I)Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/google/android/filament/utils/Float4;->set(IF)V

    return-void
.end method

.method public final set(ILcom/google/android/filament/utils/Float4;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Mat4;->get(I)Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    invoke-virtual {p2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setW(F)V

    return-void
.end method

.method public final setForward(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getZ()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    return-void
.end method

.method public final setPosition(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getW()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    return-void
.end method

.method public final setRight(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getX()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    return-void
.end method

.method public final setUp(Lcom/google/android/filament/utils/Float3;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Mat4;->getY()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setX(F)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/utils/Float4;->setY(F)V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/Float4;->setZ(F)V

    return-void
.end method

.method public final setW(Lcom/google/android/filament/utils/Float4;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    return-void
.end method

.method public final setX(Lcom/google/android/filament/utils/Float4;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    return-void
.end method

.method public final setY(Lcom/google/android/filament/utils/Float4;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    return-void
.end method

.method public final setZ(Lcom/google/android/filament/utils/Float4;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    return-void
.end method

.method public final times(Lcom/google/android/filament/utils/Float4;)Lcom/google/android/filament/utils/Float4;
    .locals 6

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/filament/utils/MatrixKt;->transpose(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    new-instance p0, Lcom/google/android/filament/utils/Float4;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    return-object p0
.end method

.method public final times(F)Lcom/google/android/filament/utils/Mat4;
    .locals 7

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    new-instance v1, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    new-instance v2, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    mul-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    new-instance v3, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    mul-float/2addr v5, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    mul-float/2addr v6, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    mul-float/2addr v5, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    mul-float/2addr v6, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    mul-float/2addr p0, p1

    invoke-direct {v0, v4, v5, v6, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance p0, Lcom/google/android/filament/utils/Mat4;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object p0
.end method

.method public final times(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;
    .locals 10

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/filament/utils/MatrixKt;->transpose(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    iget-object v0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    iget-object v1, p1, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v6

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v5, v0

    new-instance v0, Lcom/google/android/filament/utils/Float4;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v4, v1

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v5, v1

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v7

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v7

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v6, v1

    new-instance v1, Lcom/google/android/filament/utils/Float4;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    iget-object v3, p1, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    iget-object v3, p1, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v5, v2

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    iget-object v3, p1, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v7

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v7

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v6, v2

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    iget-object v3, p1, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v7

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v8

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v8

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v7, v2

    new-instance v2, Lcom/google/android/filament/utils/Float4;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    iget-object v4, p1, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v5, v3

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    iget-object v4, p1, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v6, v3

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    iget-object v4, p1, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v8

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v8

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v7, v3

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    iget-object p1, p1, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v8

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v8

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v3, p0

    new-instance p0, Lcom/google/android/filament/utils/Float4;

    invoke-direct {p0, v5, v6, v7, v3}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance p1, Lcom/google/android/filament/utils/Mat4;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object p1
.end method

.method public final toFloatArray()[F
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    const/16 v2, 0xc

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    const/16 v2, 0xd

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v1

    const/16 v2, 0xe

    aput v1, v0, v2

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    const/16 v1, 0xf

    aput p0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|\n            |"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->getZ()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->getW()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|\n            "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unaryMinus()Lcom/google/android/filament/utils/Mat4;
    .locals 4

    new-instance v0, Lcom/google/android/filament/utils/Mat4;

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->x:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float4;->unaryMinus()Lcom/google/android/filament/utils/Float4;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->y:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float4;->unaryMinus()Lcom/google/android/filament/utils/Float4;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/filament/utils/Mat4;->z:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float4;->unaryMinus()Lcom/google/android/filament/utils/Float4;

    move-result-object v3

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->w:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float4;->unaryMinus()Lcom/google/android/filament/utils/Float4;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object v0
.end method
