.class public final Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;
.super Ljava/lang/Object;
.source "StreamingJsonEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/internal/StreamingJsonEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composer"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamingJsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonEncoder.kt\nkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,221:1\n1#2:222\n*E\n"
.end annotation


# instance fields
.field private final json:Lkotlinx/serialization/json/Json;

.field private level:I

.field public final sb:Ljava/lang/StringBuilder;

.field private writingFirst:Z


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->sb:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->json:Lkotlinx/serialization/json/Json;

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->writingFirst:Z

    return-void
.end method


# virtual methods
.method public final getWritingFirst()Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->writingFirst:Z

    return p0
.end method

.method public final indent()V
    .locals 2

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->writingFirst:Z

    iget v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->level:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->level:I

    return-void
.end method

.method public final nextItem()V
    .locals 3

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->writingFirst:Z

    .line 198
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v1

    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrint:Z

    if-eqz v1, :cond_0

    const-string v1, "\n"

    .line 199
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->print(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->level:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v2

    iget-object v2, v2, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrintIndent:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->print(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final print(B)Ljava/lang/StringBuilder;
    .locals 0

    .line 213
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final print(C)Ljava/lang/StringBuilder;
    .locals 0

    .line 209
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final print(D)Ljava/lang/StringBuilder;
    .locals 0

    .line 212
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final print(F)Ljava/lang/StringBuilder;
    .locals 0

    .line 211
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final print(I)Ljava/lang/StringBuilder;
    .locals 0

    .line 215
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final print(J)Ljava/lang/StringBuilder;
    .locals 0

    .line 216
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final print(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final print(S)Ljava/lang/StringBuilder;
    .locals 0

    .line 214
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final print(Z)Ljava/lang/StringBuilder;
    .locals 0

    .line 217
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final printQuoted(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/StringOpsKt;->printQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final space()V
    .locals 1

    .line 205
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v0

    iget-boolean v0, v0, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrint:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 206
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->print(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final unIndent()V
    .locals 1

    .line 193
    iget v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder$Composer;->level:I

    return-void
.end method
