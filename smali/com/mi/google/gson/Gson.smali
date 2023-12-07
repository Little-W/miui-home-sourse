.class public final Lcom/mi/google/gson/Gson;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/google/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field private static final NULL_KEY_SURROGATE:Lcom/mi/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/mi/google/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/mi/google/gson/Gson$FutureTypeAdapter<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/mi/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/mi/google/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mi/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldNamingStrategy:Lcom/mi/google/gson/FieldNamingStrategy;

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final jsonAdapterFactory:Lcom/mi/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field private final lenient:Z

.field private final prettyPrinting:Z

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mi/google/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/mi/google/gson/TypeAdapter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/google/gson/Gson$1;

    invoke-direct {v0}, Lcom/mi/google/gson/Gson$1;-><init>()V

    sput-object v0, Lcom/mi/google/gson/Gson;->NULL_KEY_SURROGATE:Lcom/mi/google/gson/reflect/TypeToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    sget-object v1, Lcom/mi/google/gson/internal/Excluder;->DEFAULT:Lcom/mi/google/gson/internal/Excluder;

    sget-object v2, Lcom/mi/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/mi/google/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/mi/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/mi/google/gson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/mi/google/gson/Gson;-><init>(Lcom/mi/google/gson/internal/Excluder;Lcom/mi/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/mi/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/mi/google/gson/internal/Excluder;Lcom/mi/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/mi/google/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/internal/Excluder;",
            "Lcom/mi/google/gson/FieldNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/mi/google/gson/InstanceCreator<",
            "*>;>;ZZZZZZZ",
            "Lcom/mi/google/gson/LongSerializationPolicy;",
            "Ljava/util/List<",
            "Lcom/mi/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/mi/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    new-instance v0, Lcom/mi/google/gson/internal/ConstructorConstructor;

    invoke-direct {v0, p3}, Lcom/mi/google/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mi/google/gson/Gson;->constructorConstructor:Lcom/mi/google/gson/internal/ConstructorConstructor;

    iput-object p1, p0, Lcom/mi/google/gson/Gson;->excluder:Lcom/mi/google/gson/internal/Excluder;

    iput-object p2, p0, Lcom/mi/google/gson/Gson;->fieldNamingStrategy:Lcom/mi/google/gson/FieldNamingStrategy;

    iput-boolean p4, p0, Lcom/mi/google/gson/Gson;->serializeNulls:Z

    iput-boolean p6, p0, Lcom/mi/google/gson/Gson;->generateNonExecutableJson:Z

    iput-boolean p7, p0, Lcom/mi/google/gson/Gson;->htmlSafe:Z

    iput-boolean p8, p0, Lcom/mi/google/gson/Gson;->prettyPrinting:Z

    iput-boolean p9, p0, Lcom/mi/google/gson/Gson;->lenient:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p11}, Lcom/mi/google/gson/Gson;->longAdapter(Lcom/mi/google/gson/LongSerializationPolicy;)Lcom/mi/google/gson/TypeAdapter;

    move-result-object p4

    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Long;

    invoke-static {p6, p7, p4}, Lcom/mi/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/mi/google/gson/TypeAdapter;)Lcom/mi/google/gson/TypeAdapterFactory;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Double;

    invoke-direct {p0, p10}, Lcom/mi/google/gson/Gson;->doubleAdapter(Z)Lcom/mi/google/gson/TypeAdapter;

    move-result-object p8

    invoke-static {p6, p7, p8}, Lcom/mi/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/mi/google/gson/TypeAdapter;)Lcom/mi/google/gson/TypeAdapterFactory;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Float;

    invoke-direct {p0, p10}, Lcom/mi/google/gson/Gson;->floatAdapter(Z)Lcom/mi/google/gson/TypeAdapter;

    move-result-object p8

    invoke-static {p6, p7, p8}, Lcom/mi/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/mi/google/gson/TypeAdapter;)Lcom/mi/google/gson/TypeAdapterFactory;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/mi/google/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/mi/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/mi/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p4}, Lcom/mi/google/gson/Gson;->atomicLongAdapter(Lcom/mi/google/gson/TypeAdapter;)Lcom/mi/google/gson/TypeAdapter;

    move-result-object p7

    invoke-static {p6, p7}, Lcom/mi/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/mi/google/gson/TypeAdapter;)Lcom/mi/google/gson/TypeAdapterFactory;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p6, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p4}, Lcom/mi/google/gson/Gson;->atomicLongArrayAdapter(Lcom/mi/google/gson/TypeAdapter;)Lcom/mi/google/gson/TypeAdapter;

    move-result-object p4

    invoke-static {p6, p4}, Lcom/mi/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/mi/google/gson/TypeAdapter;)Lcom/mi/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigDecimal;

    sget-object p6, Lcom/mi/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/mi/google/gson/TypeAdapter;

    invoke-static {p4, p6}, Lcom/mi/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/mi/google/gson/TypeAdapter;)Lcom/mi/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigInteger;

    sget-object p6, Lcom/mi/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/mi/google/gson/TypeAdapter;

    invoke-static {p4, p6}, Lcom/mi/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/mi/google/gson/TypeAdapter;)Lcom/mi/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/mi/google/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object p6, p0, Lcom/mi/google/gson/Gson;->constructorConstructor:Lcom/mi/google/gson/internal/ConstructorConstructor;

    invoke-direct {p4, p6}, Lcom/mi/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/mi/google/gson/internal/bind/MapTypeAdapterFactory;

    iget-object p6, p0, Lcom/mi/google/gson/Gson;->constructorConstructor:Lcom/mi/google/gson/internal/ConstructorConstructor;

    invoke-direct {p4, p6, p5}, Lcom/mi/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/mi/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object p5, p0, Lcom/mi/google/gson/Gson;->constructorConstructor:Lcom/mi/google/gson/internal/ConstructorConstructor;

    invoke-direct {p4, p5}, Lcom/mi/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;)V

    iput-object p4, p0, Lcom/mi/google/gson/Gson;->jsonAdapterFactory:Lcom/mi/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object p4, p0, Lcom/mi/google/gson/Gson;->jsonAdapterFactory:Lcom/mi/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/mi/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/mi/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object p5, p0, Lcom/mi/google/gson/Gson;->constructorConstructor:Lcom/mi/google/gson/internal/ConstructorConstructor;

    iget-object p6, p0, Lcom/mi/google/gson/Gson;->jsonAdapterFactory:Lcom/mi/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {p4, p5, p2, p1, p6}, Lcom/mi/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;Lcom/mi/google/gson/FieldNamingStrategy;Lcom/mi/google/gson/internal/Excluder;Lcom/mi/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/google/gson/Gson;->factories:Ljava/util/List;

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/mi/google/gson/stream/JsonReader;)V
    .locals 0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object p0

    sget-object p1, Lcom/mi/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/mi/google/gson/stream/JsonToken;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/mi/google/gson/JsonIOException;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/mi/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/mi/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/mi/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/mi/google/gson/JsonSyntaxException;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static atomicLongAdapter(Lcom/mi/google/gson/TypeAdapter;)Lcom/mi/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/mi/google/gson/TypeAdapter<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/mi/google/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/mi/google/gson/Gson$5;-><init>(Lcom/mi/google/gson/TypeAdapter;)V

    invoke-virtual {v0}, Lcom/mi/google/gson/Gson$5;->nullSafe()Lcom/mi/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method private static atomicLongArrayAdapter(Lcom/mi/google/gson/TypeAdapter;)Lcom/mi/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/mi/google/gson/TypeAdapter<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/mi/google/gson/Gson$6;

    invoke-direct {v0, p0}, Lcom/mi/google/gson/Gson$6;-><init>(Lcom/mi/google/gson/TypeAdapter;)V

    invoke-virtual {v0}, Lcom/mi/google/gson/Gson$6;->nullSafe()Lcom/mi/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method static checkValidFloatingPoint(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doubleAdapter(Z)Lcom/mi/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mi/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p0, Lcom/mi/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/mi/google/gson/TypeAdapter;

    return-object p0

    :cond_0
    new-instance p1, Lcom/mi/google/gson/Gson$2;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/Gson$2;-><init>(Lcom/mi/google/gson/Gson;)V

    return-object p1
.end method

.method private floatAdapter(Z)Lcom/mi/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mi/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p0, Lcom/mi/google/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/mi/google/gson/TypeAdapter;

    return-object p0

    :cond_0
    new-instance p1, Lcom/mi/google/gson/Gson$3;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/Gson$3;-><init>(Lcom/mi/google/gson/Gson;)V

    return-object p1
.end method

.method private static longAdapter(Lcom/mi/google/gson/LongSerializationPolicy;)Lcom/mi/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/LongSerializationPolicy;",
            ")",
            "Lcom/mi/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/mi/google/gson/LongSerializationPolicy;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/mi/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/mi/google/gson/TypeAdapter;

    return-object p0

    :cond_0
    new-instance p0, Lcom/mi/google/gson/Gson$4;

    invoke-direct {p0}, Lcom/mi/google/gson/Gson$4;-><init>()V

    return-object p0
.end method


# virtual methods
.method public fromJson(Lcom/mi/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mi/google/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/google/gson/JsonIOException;,
            Lcom/mi/google/gson/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->isLenient()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/mi/google/gson/stream/JsonReader;->setLenient(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/mi/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/mi/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mi/google/gson/Gson;->getAdapter(Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/TypeAdapter;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lcom/mi/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p2, Lcom/mi/google/gson/JsonSyntaxException;

    invoke-direct {p2, p0}, Lcom/mi/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Lcom/mi/google/gson/JsonSyntaxException;

    invoke-direct {p2, p0}, Lcom/mi/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_2
    move-exception p0

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, v0}, Lcom/mi/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object p0

    :cond_0
    :try_start_2
    new-instance p2, Lcom/mi/google/gson/JsonSyntaxException;

    invoke-direct {p2, p0}, Lcom/mi/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/mi/google/gson/stream/JsonReader;->setLenient(Z)V

    throw p0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/google/gson/JsonSyntaxException;,
            Lcom/mi/google/gson/JsonIOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/mi/google/gson/stream/JsonReader;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/Gson;->fromJson(Lcom/mi/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mi/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/mi/google/gson/stream/JsonReader;)V

    invoke-static {p2}, Lcom/mi/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/google/gson/JsonIOException;,
            Lcom/mi/google/gson/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/mi/google/gson/stream/JsonReader;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/Gson;->fromJson(Lcom/mi/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mi/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/mi/google/gson/stream/JsonReader;)V

    return-object p0
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/google/gson/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2}, Lcom/mi/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/google/gson/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter(Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mi/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/mi/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lcom/mi/google/gson/Gson;->NULL_KEY_SURROGATE:Lcom/mi/google/gson/reflect/TypeToken;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/google/gson/TypeAdapter;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mi/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/mi/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mi/google/gson/Gson$FutureTypeAdapter;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    :try_start_0
    new-instance v2, Lcom/mi/google/gson/Gson$FutureTypeAdapter;

    invoke-direct {v2}, Lcom/mi/google/gson/Gson$FutureTypeAdapter;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/mi/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mi/google/gson/TypeAdapterFactory;

    invoke-interface {v4, p0, p1}, Lcom/mi/google/gson/TypeAdapterFactory;->create(Lcom/mi/google/gson/Gson;Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Lcom/mi/google/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/mi/google/gson/TypeAdapter;)V

    iget-object v2, p0, Lcom/mi/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/mi/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/mi/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v2
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/mi/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/mi/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/mi/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/mi/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/Gson;->getAdapter(Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getDelegateAdapter(Lcom/mi/google/gson/TypeAdapterFactory;Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mi/google/gson/TypeAdapterFactory;",
            "Lcom/mi/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/mi/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/mi/google/gson/Gson;->jsonAdapterFactory:Lcom/mi/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mi/google/gson/TypeAdapterFactory;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/mi/google/gson/TypeAdapterFactory;->create(Lcom/mi/google/gson/Gson;Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GSON cannot serialize "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newJsonReader(Ljava/io/Reader;)Lcom/mi/google/gson/stream/JsonReader;
    .locals 1

    new-instance v0, Lcom/mi/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/mi/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iget-boolean p0, p0, Lcom/mi/google/gson/Gson;->lenient:Z

    invoke-virtual {v0, p0}, Lcom/mi/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object v0
.end method

.method public newJsonWriter(Ljava/io/Writer;)Lcom/mi/google/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mi/google/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/mi/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/mi/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Lcom/mi/google/gson/Gson;->prettyPrinting:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    invoke-virtual {v0, p1}, Lcom/mi/google/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    :cond_1
    iget-boolean p0, p0, Lcom/mi/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, p0}, Lcom/mi/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-object v0
.end method

.method public toJson(Lcom/mi/google/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/mi/google/gson/Gson;->toJson(Lcom/mi/google/gson/JsonElement;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/mi/google/gson/JsonNull;->INSTANCE:Lcom/mi/google/gson/JsonNull;

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/Gson;->toJson(Lcom/mi/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mi/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/mi/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Lcom/mi/google/gson/JsonElement;Lcom/mi/google/gson/stream/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/google/gson/JsonIOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/mi/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/mi/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2}, Lcom/mi/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    iget-boolean v2, p0, Lcom/mi/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v2}, Lcom/mi/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2}, Lcom/mi/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v2

    iget-boolean p0, p0, Lcom/mi/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, p0}, Lcom/mi/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/mi/google/gson/internal/Streams;->write(Lcom/mi/google/gson/JsonElement;Lcom/mi/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Lcom/mi/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2, v1}, Lcom/mi/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2, v2}, Lcom/mi/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Lcom/mi/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/mi/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2, v1}, Lcom/mi/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2, v2}, Lcom/mi/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw p0
.end method

.method public toJson(Lcom/mi/google/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/google/gson/JsonIOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/mi/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mi/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/mi/google/gson/stream/JsonWriter;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/Gson;->toJson(Lcom/mi/google/gson/JsonElement;Lcom/mi/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/mi/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/mi/google/gson/stream/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/google/gson/JsonIOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/mi/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/mi/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mi/google/gson/Gson;->getAdapter(Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;

    move-result-object p2

    invoke-virtual {p3}, Lcom/mi/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/mi/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3}, Lcom/mi/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    iget-boolean v2, p0, Lcom/mi/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v2}, Lcom/mi/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3}, Lcom/mi/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v2

    iget-boolean p0, p0, Lcom/mi/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, p0}, Lcom/mi/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/mi/google/gson/TypeAdapter;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v0}, Lcom/mi/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v1}, Lcom/mi/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v2}, Lcom/mi/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Lcom/mi/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p3, v0}, Lcom/mi/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v1}, Lcom/mi/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v2}, Lcom/mi/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw p0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/google/gson/JsonIOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/mi/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/mi/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/mi/google/gson/stream/JsonWriter;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/mi/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/mi/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/mi/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mi/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mi/google/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mi/google/gson/Gson;->constructorConstructor:Lcom/mi/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
