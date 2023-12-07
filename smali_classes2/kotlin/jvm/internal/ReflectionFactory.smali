.class public Lkotlin/jvm/internal/ReflectionFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/KFunction;
    .locals 0

    return-object p1
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 0

    new-instance p0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;
    .locals 0

    new-instance p0, Lkotlin/jvm/internal/PackageReference;

    invoke-direct {p0, p1, p2}, Lkotlin/jvm/internal/PackageReference;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object p0
.end method

.method public renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "kotlin.jvm.functions."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeOf(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClassifier;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;Z)",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    new-instance p0, Lkotlin/jvm/internal/TypeReference;

    invoke-direct {p0, p1, p2, p3}, Lkotlin/jvm/internal/TypeReference;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V

    return-object p0
.end method
