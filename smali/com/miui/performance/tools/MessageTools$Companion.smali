.class public final Lcom/miui/performance/tools/MessageTools$Companion;
.super Ljava/lang/Object;
.source "MainLooperPrinter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/performance/tools/MessageTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainLooperPrinter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainLooperPrinter.kt\ncom/miui/performance/tools/MessageTools$Companion\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,79:1\n120#2,6:80\n120#2,6:86\n120#2,6:92\n132#2,6:98\n132#2,6:104\n*E\n*S KotlinDebug\n*F\n+ 1 MainLooperPrinter.kt\ncom/miui/performance/tools/MessageTools$Companion\n*L\n47#1,6:80\n48#1,6:86\n57#1,6:92\n58#1,6:98\n71#1,6:104\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/performance/tools/MessageTools$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .line 92
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ge v3, v1, :cond_2

    .line 93
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 98
    :goto_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v5

    :goto_3
    if-ltz v1, :cond_5

    .line 99
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x40

    if-ne v6, v7, :cond_3

    move v6, v4

    goto :goto_4

    :cond_3
    move v6, v2

    :goto_4
    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    move v1, v5

    :goto_5
    if-eq v3, v5, :cond_7

    if-eq v1, v5, :cond_6

    add-int/lit8 v3, v3, 0x2

    .line 61
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x2

    .line 63
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    :goto_6
    return-object p1
.end method

.method public final getHandler(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .line 80
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    .line 81
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 86
    :goto_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v6, v2

    :goto_3
    if-ge v6, v1, :cond_5

    .line 87
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_3

    move v7, v5

    goto :goto_4

    :cond_3
    move v7, v2

    :goto_4
    if-eqz v7, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_5
    if-eq v3, v4, :cond_6

    if-eq v6, v4, :cond_6

    if-ge v3, v6, :cond_6

    add-int/2addr v3, v5

    .line 50
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    :goto_6
    return-object p1
.end method
