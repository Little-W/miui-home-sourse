.class public Lcom/miui/maml/elements/VirtualAnimatedScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "VirtualAnimatedScreenElement.java"


# static fields
.field public static final COLOR_1:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final COLOR_2:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final FLOAT_1:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final FLOAT_2:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final FLOAT_3:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final FLOAT_4:Lcom/miui/maml/folme/AnimatedProperty;

.field private static final PROPERTY_NAME_RESERVE_COLOR_1:Ljava/lang/String; = "color1"

.field private static final PROPERTY_NAME_RESERVE_COLOR_2:Ljava/lang/String; = "color1"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_1:Ljava/lang/String; = "float1"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_2:Ljava/lang/String; = "float2"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_3:Ljava/lang/String; = "float3"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_4:Ljava/lang/String; = "float4"

.field public static final TAG_NAME:Ljava/lang/String; = "VirtualElement"


# instance fields
.field private mColor1Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mColor2Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat1Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat2Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat3Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat4Property:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$1;

    const-string v1, "color1"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 51
    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;

    const-string v1, "color1"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 75
    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$3;

    const-string v1, "float1"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_1:Lcom/miui/maml/folme/AnimatedProperty;

    .line 99
    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;

    const-string v1, "float2"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_2:Lcom/miui/maml/folme/AnimatedProperty;

    .line 123
    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;

    const-string v1, "float3"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_3:Lcom/miui/maml/folme/AnimatedProperty;

    .line 147
    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$6;

    const-string v1, "float4"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_4:Lcom/miui/maml/folme/AnimatedProperty;

    .line 172
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "color1"

    sget-object v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "color1"

    sget-object v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "float1"

    sget-object v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_1:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "float2"

    sget-object v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_2:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "float3"

    sget-object v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_3:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "float4"

    sget-object v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_4:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x44e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x44f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_1:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x450

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_2:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v5, 0x451

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_3:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v6, 0x452

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_4:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v7, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_1:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_2:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_3:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_4:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 16

    move-object/from16 v0, p0

    .line 202
    invoke-direct/range {p0 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 203
    new-instance v8, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".color1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v8, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor1Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 204
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".color2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v13

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor2Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 205
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".float1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat1Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 206
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".float2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v13

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat2Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 207
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".float3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat3Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 208
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".float4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v13

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat4Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor1Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor2Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat1Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat2Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat3Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat4Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected isInFolmeMode()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mHasName:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tick(J)V
    .locals 0

    return-void
.end method
